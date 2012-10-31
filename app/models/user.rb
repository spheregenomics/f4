class User < ActiveRecord::Base
  has_many :course_session_enrollments
  has_many :users, :through => :course_session_enrollments
  attr_accessible :diaspora_login, :shapado_login, :user_name
end
