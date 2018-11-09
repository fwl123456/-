# 用户
class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # 用户名
  field :name, type: String
  # 性别 1：男 2：女
  field :gender, type: Integer
  # 用户等级
  field :level, type: Integer, default: 0 # 用户等级 0普通用户 1 vip
  # 头像
  field :headimgurl, type: String # 头像url
  # 手机号
  field :phone, type: String # 头像url
  # 邮箱
  field :email, type: String
  # 登录密码
  field :password, type: String
  # 验证(名称，电话，邮箱，不得重复，不得为空)：
  validates :name, :mobile, :email, uniqueness: true, presence: true

  # 用户有多个课程
  has_many :courses
  # 用户有多次上课记录
  has_many :course_logs
end