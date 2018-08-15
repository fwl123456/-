json.article_log do
	json.id @article_log.id.to_s
	json.title @article_log.title
  json.new_view_count @article_log.new_view_count
  json.ref_date @article_log.ref_date.strftime("%F %T")
  json.view_count @article_log.new_view_count + article_log.article.view_count
	json.created_at @article_log.created_at.strftime("%F %T")
end