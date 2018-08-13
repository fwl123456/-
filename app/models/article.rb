# 文章
class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String # 文章名称
  field :content, type: String # 文章内容
  field :url, type: String # 文章链接地址
  field :desc, type: String # 文章描述
  field :view_count, type: Integer # 文章浏览量
  field :is_open, type: Boolean, default: true #是否开启监控 true开启，false关闭，默认true
  field :status, type: Integer # 文章状态 -1 监控完成 0 未监控 1 监控中
  field :release_at, type: Time # 文章发布时间
  field :collect_rate，type: Integer, default: 2 # 文章监控频率，默认一小时2次
  field :collect_count，type: Integer # 监控次数
  field :end_at，type: Date # 文章监控结束日期
  belongs_to :wx_public
end