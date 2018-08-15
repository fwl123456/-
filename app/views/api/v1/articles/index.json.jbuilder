json.articles @articles do |article|
  json.id article.id.to_s
  json.title article.title
  json.content article.content
  json.url article.url
  json.desc article.desc
  json.author article.author
  json.view_count article.view_count
  json.is_open article.is_open
  json.status article.status
  json.release_at article.release_at.strftime("%F %T")
  json.created_at article.created_at.strftime("%F %T")
end
json.total @articles.total_count
json.current_page @articles.current_page
