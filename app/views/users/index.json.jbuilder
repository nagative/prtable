json.array! @users do |user|
  json.id           user.id
  json.name         user.name
  json.company_logo user.contact.company_logo
end
