def longname()
    name = fullname
    organization = Organization.lookup(id: organization_id) if organization_id
    return name += " (#{organization.name})" unless !organization 
end