class CreateLessonLayouts < ActiveRecord::Migration
  def change
    create_table :lesson_layouts do |t|
      t.string :lesson_name
      t.string :lesson_type
      t.integer :seq
      t.string :synopsis
      t.string :status
      t.text :description
      t.integer :version
      t.integer :unit_id

      t.timestamps
    end
  end
end
