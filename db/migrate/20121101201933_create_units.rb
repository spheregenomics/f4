class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unit_name
      t.string :unit_type
      t.integer :seq
      t.string :synopsis
      t.string :status
      t.text :description
      t.integer :version
      t.integer :course_id

      t.timestamps
    end
  end
end
