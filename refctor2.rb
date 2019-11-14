def longname
    name = fullname
    return organization = Organization.lookup(id: organization_id) unless !organization_id
    return name += " (#{organization.name})"  unless !organization
end
