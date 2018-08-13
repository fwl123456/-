# 微信公众号
class WxPublic
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Search

  field :name, type: String # 微信公众号名称
  field :desc, type: String # 微信公众号描述

  has_many :articles
  search_in :name
end