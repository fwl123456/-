# 文章浏览记录
class ArticleLog
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String  # 文章标题
  field :new_view_count, type: Integer # 新增文章浏览量
  field :ref_date, type: String # 当前数据的日期
  field :view_count, type: Integer # 总浏览量
  belongs_to :article
end