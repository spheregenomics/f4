class CreateLayoutFields < ActiveRecord::Migration
  def change
    create_table :layout_fields do |t|
      t.string :field_name
      t.string :field_value
      t.string :version
      t.integer :lesson_layout_id

      t.timestamps
    end
  end
end
