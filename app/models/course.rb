# 课程
class Course
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String # 课程名称
  field :desc, type: String # 课程简介

  # 验证(名称，电话，邮箱，不得重复，不得为空)：
  validates :name, uniqueness: true, presence: true

  # 课程属于用户
  belongs_to :user
  # 课程有多个课程记录
  has_many :course_logs
end