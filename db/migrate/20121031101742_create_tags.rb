class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.string :tag_type
      t.integer :tag_system_bitmap

      t.timestamps
    end
  end
end
