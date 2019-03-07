json.id contact.id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.address contact.address
json.phone contact.phone
json.email contact.email
json.bio contact.bio
json.formatted do 
  json.updated_at contact.friendly_updated_at
  json.full_name contact.full_name  
end