def assets(data)
  app_model = self.class.to_app_model
  data[ app_model ] = {}  if !data[ app_model ]
  atributes(attributes_with_association_ids, data) if !data[ app_model ][ id ]
  return data unless self['created_by_id']
  created_by_id(%w[created_by_id], data)
end
    
def attributes(attributes_with_association_ids, data)
  local_attributes = attributes_with_association_ids
  local_attributes['object'] = ObjectLookup.by_id(local_attributes['activity_stream_object_id'])
  local_attributes['type']   = TypeLookup.by_id(local_attributes['activity_stream_type_id'])
  data[ app_model ][ id ] = local_attributes
  ApplicationModel.assets_of_object_list([local_attributes], data)
end

def created_by_id(created_by_id, data)
  created_by_id.each do |local_user_id| 
    next if !self[ local_user_id ]
    return unless data[ app_model_user ] && data[ app_model_user ][ self[ local_user_id ] ]
    user = User.lookup(id: self[ local_user_id ])
    return data = user.assets(data) unless user
  end  
  data 
end