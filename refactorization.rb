def ref_object_touch(record)    
  return true if Setting.get('import_mode')

  member_ids = []
  organization_id_changed = record.saved_changes['organization_id']
  get_ids = get_ids(record, member_ids)

  return get_ids unless organization_id_changed && organization_id_changed[0] != organization_id_changed[1]
  return get_ids unless organization_id_changed[0]
  return get_ids unless User.where(organization_id: organization_id_changed[0]).count < 100
  organization = Organization.find(organization_id_changed[0])
  organization.touch
  member_ids = organization.member_ids    
  get_ids(record, member_ids)    
  true
end

def get_ids(record, member_ids)     
  return find_id(record, member_ids) unless User.where(organization_id: record.organization_id).count < 100 && record.organization  
  record.organization.touch
  member_ids += record.organization.member_ids 
  find_id(record, member_ids) 
end

def find_id(record, member_ids)
  member_ids.uniq.each do |user_id|
  next if user_id == record.id
  User.find(user_id).touch
end