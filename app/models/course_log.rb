# 上课记录
class CourseLog
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String # 课程名称
  field :desc, type: String # 课程详细内容描述
  field :user_name, type: String # 上课人名称
  field :start_at, type: String # 上课人开始上课时间
  
  # 上课记录属于用户
  belongs_to: user
  # 上课记录属于课程
  belongs_to: course
end