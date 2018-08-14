json.article_logs @article_logs do |article_log|
  json.id article_log.id.to_s
  json.title article_log.title
  json.new_view_count article_log.new_view_count
  json.ref_date article_log.ref_date.strftime("%F %T")
  json.view_count article_log.view_count
  json.created_at article_log.created_at.strftime("%F %T")
end
json.total @article_logs.total_count
json.current_page @article_logs.current_page
