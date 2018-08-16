class Api::V1::ArticleLogsController < Api::V1::BaseController
  before_action :set_article, only: [:create, :update, :destroy]
  before_action :set_article_log, only: [:update, :destroy]
  def index
    @wx_public = WxPublic.find(params[:wx_public_id])
    @article_logs = @wx_public.articles.find(params[:article_id]).article_logs
    @article_logs = @article_logs.page(params[:page])
  end
  
  def show
    if !@article_log
      return render json: {status: -1, notice: '数据不存在'}
    end
  end

  def create
    @phone = Phone.find(params[:phone_id])
    @article_log = @article.article_logs.new(article_log_params.merge(phone: @phone, wx_public: @article.wx_public))
    if @article_log.save
      @article_log.update(view_count: @article_log.new_view_count + @article.view_count)
      render json: { status: 1, notice: "创建成功", id: @article_log.id.to_s }
    else
      render json: { status: -1, notice: "创建失败", error_msg: @article_log.errors.full_messages }
    end
  end
  
  def update()
    result = @article_log.update(article_log_params)
    if result
      render json: { status: 1, notice: "更改成功！" }
    else
      render json: { status: -1, notice: "更改失败", error_msg: @wx_public.errors.full_messages }
    end
  end

  def destroy
    result = @article_log.destroy
    render json: { status: 1, notice: "删除成功！"}
  end

  private
  def set_article_log
    @article_log = ArticleLog.find(params[:id]) 
  end

  def set_article
    @wx_public = WxPublic.find(params[:wx_public_id])
    @article = @wx_public.articles.find(params[:article_id])
  end
  
  def article_log_params
    params.require(:article_log).permit(:title, :new_view_count, :ref_date)
  end
  
end