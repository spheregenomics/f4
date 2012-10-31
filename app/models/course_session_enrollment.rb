class CourseSessionEnrollment < ActiveRecord::Base
  belongs_to :course_session
  belongs_to :user
  # attr_accessible :title, :body
end
