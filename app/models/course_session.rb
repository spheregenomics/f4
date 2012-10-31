class CourseSession < ActiveRecord::Base
  attr_accessible :course_status, :end_date, :max_students, :session_type, :start_date
end
