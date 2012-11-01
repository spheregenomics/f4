class CreateLayoutTables < ActiveRecord::Migration
  def change
    create_table :layout_tables do |t|
      t.integer :table_number
      t.integer :row_num
      t.string :col1
      t.string :col2
      t.string :col3
      t.string :col4
      t.integer :version
      t.integer :lesson_layout_id

      t.timestamps
    end
  end
end
