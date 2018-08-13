class Api::V1::WxPublicsController < Api::V1::BaseController

  def index
    @wx_publics = WxPublic.all
  end
  
end