
def update_info(data, key, value)
  data[key.to_sym] = value
  data
end

data = {
  enterprise: 'Homie',
  years: 4,
  location: 'Merida'
}

update_info(data, "workers", 4)
update_info(data, "MainOffice", 'CDMX')
update_info(data, "enterprise", 'Computers inc')
update_info(data, "years", 5)
update_info(data, "telephone", 123456789)



