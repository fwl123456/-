class Api::V1::ArticlesController < Api::V1::BaseController

  def index
    @wx_public = WxPublic.find(params[:id])
    @articles = wx_public.articles
  end
  
end