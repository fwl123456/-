class Api::V1::Admin::PhonesController < Api::V1::Admin::BaseController

  def index
    @phones = Phone.all
    @phones = @phones.where(status: params[:status]) unless params[:status].blank?
    @phones = @phones.page(params[:page])
  end

  def show
    @phone = Phone.find(params[:id])
  end
  
  
end