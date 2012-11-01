class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_type
      t.string :synopsis
      t.string :course_language
      t.string :status
      t.string :target_level
      t.string :owner
      t.text :description
      t.integer :version

      t.timestamps
    end
  end
end
