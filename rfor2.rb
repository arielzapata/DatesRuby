def longname
  name = fullname
  return name unless organization_id
  organization = Organization.lookup(id: organization_id)
  name += " (#{organization.name})" if organization 
  name
end
