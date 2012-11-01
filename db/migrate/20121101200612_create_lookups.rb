class CreateLookups < ActiveRecord::Migration
  def change
    create_table :lookups do |t|
      t.string :field_name
      t.string :lookup_text
      t.string :model_name
      t.string :note

      t.timestamps
    end
  end
end
