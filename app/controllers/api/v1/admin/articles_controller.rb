class Api::V1::Admin::ArticlesController < Api::V1::Admin::BaseController
  before_action :set_wx_public, only: [:index, :show]

  def index
    @articles = @wx_public.articles
    @articles = @articles.full_text_search(params[:search]) unless params[:search].blank?
    @articles = @articles.page(params[:page])
  end

  def show
    @article = @wx_public.articles.find(params[:id])
  end
  
  private

  def set_wx_public
    @wx_public = WxPublic.find(params[:wx_public_id])
  end
  
end