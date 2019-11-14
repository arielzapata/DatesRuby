def customer_state(session_id = nil)
  return { state: 'chat_disabled' } unless Setting.get('chat')
  chat_agent=Chat.active_agent_count([id])
  waiting_count = Chat.waiting_chat_count(id)
  return check_state(chat_agent,waiting_count) unless session_id #si no hay ID
  chat_session = Chat::Session.find_by(session_id: session_id, state: %w[waiting running])
  return chat_state(chat_session.state) unless chat_session 
  return check_state(chat_agent,waiting_count) unless chat_session.state == 'running'
  user = nil
  return check_state(chat_agent,waiting_count) unless chat_session.user_id
  chat_user = User.lookup(id: chat_session.user_id)
  url = nil
  
  if chat_user.image && chat_user.image != 'none'
    url = "#{Setting.get('http_type')}://#{Setting.get('fqdn')}/api/v1/users/image/#{chat_user.image}"
  end
  check_session(session)
end

def chat_state(state)
  if state == 'waiting'
        {
    state:    'reconnect',
    position: chat_session.position,
    }
  end
end

def check_session(session)
  if session
        {
    state:   'reconnect',
    session: session,
    agent:   user,
    }
  end
end

def check_state(chat_agent, waiting_chat)
  { state: 'offline' } if chat_agent.zero?
  
  if waiting_chat >= max_queue
        {
    state: 'no_seats_available',
    queue: waiting_count,
    }
  end
    { state: 'online' }
end



    
