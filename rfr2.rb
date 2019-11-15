def longname
    name = fullname
    return name  unless organization_id 
    organization ? name += " (#{organization.name})" : name
end