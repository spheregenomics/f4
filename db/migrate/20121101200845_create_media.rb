class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :media_filename
      t.integer :file_bitmap
      t.string :media_name
      t.text :description
      t.integer :media_category_id
      t.integer :seq

      t.timestamps
    end
  end
end
