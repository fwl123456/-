class Api::V1::ArticleLogsController < Api::V1::BaseController

  def index
    puts "+++++++++++++++#{params[:wx_public_id]}"
    @wx_public = WxPublic.find(params[:wx_public_id])
    puts "!!!!!!!!!!!!!!#{@wx_public}"
    @article_logs = @wx_public.articles.find(params[:article_id]).article_logs
    @article_logs = @article_logs.page(params[:page])
  end
  
end