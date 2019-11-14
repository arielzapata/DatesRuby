  def longname
    name = fullname
    if organization_id
      organization = Organization.lookup(id: organization_id)
      if organization
        name += " (#{organization.name})"
      end
    end
    name
  end