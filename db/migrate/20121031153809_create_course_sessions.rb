class CreateCourseSessions < ActiveRecord::Migration
  def change
    create_table :course_sessions do |t|
      t.string :course_status
      t.string :session_type
      t.timestamp :start_date
      t.timestamp :end_date
      t.integer :max_students

      t.timestamps
    end
  end
end
