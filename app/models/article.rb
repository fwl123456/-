# 公众号文章
class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Search

  field :title, type: String # 文章标题
  field :content, type: String # 文章内容
  field :url, type: String # 文章链接地址
  field :desc, type: String # 文章描述
  field :author, type: String # 文章作者
  field :view_count, type: Integer # 文章当前浏览量
  field :is_open, type: Boolean, default: true #是否开启监控 true开启，false关闭，默认true
  field :status, type: Integer # 文章状态 -1 监控完成 0 未监控 1 监控中
  field :release_at, type: Time # 文章发布时间
  field :collect_rate, type: Integer, default: 2 # 文章监控频率，默认一小时2次
  field :collect_count, type: Integer, default: 0 # 监控次数
  field :end_at, type: Date # 文章监控结束日期
  search_in :title, :author, :status
  belongs_to :wx_public
  has_many :article_logs
end