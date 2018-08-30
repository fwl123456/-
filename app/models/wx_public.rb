# 微信公众号
class WxPublic
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Search

  field :name, type: String # 微信公众号名称
  field :desc, type: String # 微信公众号描述
  field :active, type: Boolean, default: true # 公众号是否开启监控 true开启  false 关闭
  field :collect_count, type: Integer, default: 1 # 公众号文章默认采集条数，默认 1条
  field :monitoring_rate, type: Integer, default: 2 # 文章监控频率，默认一小时2次
  field :monitoring_count, type: Integer, default: 0 # 监控次数
  field :end_at, type: Date # 监控结束日期
  has_many :articles
  has_many :article_logs
  search_in :name
end