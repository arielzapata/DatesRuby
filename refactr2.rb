def longname(name,organization)
  return unless organization_id
  return unless organization
  name += " (#{organization.name})"
end