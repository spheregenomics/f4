class CourseSession < ActiveRecord::Base
  belongs_to :course
  has_many :course_session_enrollments
  has_many :users, :through => :course_session_enrollments 
  attr_accessible :course_status, :end_date, :max_students, :session_type, :start_date
end
