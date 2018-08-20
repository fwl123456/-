json.phones @phones do |phone|
  json.id phone.id.to_s
  json.sn phone.sn
  json.name phone.name
  json.status phone.status
  json.start_time phone.start_time.strftime("%F %T")
  json.created_at phone.created_at.strftime("%F %T")
end
json.total @phones.total_count
json.current_page @phones.current_page
