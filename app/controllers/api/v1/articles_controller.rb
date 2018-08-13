class Api::V1::ArticlesController < Api::V1::BaseController

  def index
    @wx_publics = WxPubilc.all
  end
  
end