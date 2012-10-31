class CreateMediaCatagories < ActiveRecord::Migration
  def change
    create_table :media_catagories do |t|
      t.integer :seq
      t.string :media_cat
      t.text :description
      t.integer :version
      t.references :course

      t.timestamps
    end
    add_index :media_catagories, :course_id
  end
end
