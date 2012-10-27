class Course < ActiveRecord::Base
  attr_accessible :course_language, :course_name, :course_type, :description, :owner, :status, :synopsis, :target_level, :version
  has_many :units, :dependent => :destroy
end
