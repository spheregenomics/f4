class AddColumnLayoutTypeToLessonLayouts < ActiveRecord::Migration
  def change
    add_column :lesson_layouts, :layout_type, :integer
  end
end
