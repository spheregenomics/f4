class AddColumnLessonIdToLessonLayouts < ActiveRecord::Migration
  def change
    add_column :lesson_layouts, :lesson_id, :integer
  end
end
