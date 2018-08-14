json.article do
	json.id @article.id.to_s
	json.title @article.title
  json.content @article.content
  json.url @article.url
  json.desc @article.desc
  json.author @article.author
  json.view_count @article.view_count
  json.is_open @article.is_open
  json.status @article.status
  json.release_at @article.release_at
  json.collect_rate @article.collect_rate
  json.collect_count @article.collect_count
  json.end_at @article.end_at.strftime("%F ")
	json.created_at @article.created_at.strftime("%F %T")
end