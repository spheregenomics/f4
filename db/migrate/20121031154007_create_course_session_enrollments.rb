class CreateCourseSessionEnrollments < ActiveRecord::Migration
  def change
    create_table :course_session_enrollments do |t|
      t.references :course_session
      t.references :user

      t.timestamps
    end
    add_index :course_session_enrollments, :course_session_id
    add_index :course_session_enrollments, :user_id
  end
end
