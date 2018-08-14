json.wx_publics @wx_publics do |wx_public|
  json.id wx_public.id.to_s
  json.name wx_public.name
  json.desc wx_public.desc
  json.create_at wx_public.created_at
end
json.total @wx_publics.total_count
json.current_page @wx_publics.current_page
