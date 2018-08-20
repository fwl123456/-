json.phone do
	json.id @phone.id.to_s
	json.sn @phone.sn
  json.name @phone.name
  json.status @phone.status
  json.start_time @phone.start_time.strftime("%F %T")
	json.created_at @phone.created_at.strftime("%F %T")
end