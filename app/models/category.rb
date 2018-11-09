# 分类
class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Tree

  field :name, type: String # 分类名称
  field :desc, type: String # 课程详细内容描述
  field :user_name, type: String # 上课人名称
  field :start_at, type: String # 上课人开始上课时间
end
  