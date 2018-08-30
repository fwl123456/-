class Api::V1::WxPublicsController < Api::V1::BaseController

  def index
    @wx_publics = WxPublic.all
    @wx_publics = @wx_publics.where(active: params[:active]) unless params[:active].blank?
    @wx_publics = @wx_publics.page(params[:page])
  end
  
end