class CreateSentenceTags < ActiveRecord::Migration
  def change
    create_table :sentence_tags do |t|
      t.references :sentence
      t.string :tag

      t.timestamps
    end
    add_index :sentence_tags, :sentence_id
  end
end
