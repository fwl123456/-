class Api::V1::Admin::ArticleLogsController < Api::V1::Admin::BaseController

  def index
    @wx_public = WxPublic.find(params[:wx_public_id])
    @article_logs = @wx_public.articles.find(params[:article_id]).article_logs
    @article_logs = @article_logs.page(params[:page])
  end
  
end