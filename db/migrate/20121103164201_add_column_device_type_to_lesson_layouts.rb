class AddColumnDeviceTypeToLessonLayouts < ActiveRecord::Migration
  def change
    add_column :lesson_layouts, :device_type, :integer
  end
end
