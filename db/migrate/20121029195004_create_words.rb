class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word_fluent
      t.string :fluent_language
      t.string :word_foreign
      t.string :foreign_language

      t.timestamps
    end
  end
end
