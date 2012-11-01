class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :language
      t.string :sentence

      t.timestamps
    end
  end
end
