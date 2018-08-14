class Api::V1::WxPublicsController < Api::V1::BaseController
  before_action :set_wx_public, only: [:show, :update, :destroy]
  def index
    @wx_publics = WxPublic.all.page(params[:page])
  end

  def show
    if !@wx_public
      return render json: {status: -1, notice: '数据不存在'}
    end
  end

  def create
    @wx_public = WxPublic.new(wx_public_params)
    if @wx_public.save
      render json: { status: 1, notice: "创建成功", id: @wx_public.id.to_s }
    else
      render json: { status: -1, notice: "创建失败", error_msg: @wx_public.errors.full_messages }
    end
  end
  
  def update
    result = @wx_public.update(wx_public_params)
    if result
      render json: { status: 1, notice: "更改成功！" }
    else
      render json: { status: -1, notice: "更改失败", error_msg: @wx_public.errors.full_messages }
    end
  end
  
  def destroy
    result = @wx_public.destroy
    render json: { status: 1, notice: "删除成功！"}
  end

  private

  def set_wx_public
    @wx_public = WxPublic.find(params[:id]) 
  end
  
  def wx_public_params
    params.require(:wx_public).permit(:name, :desc)
  end
  
  
end