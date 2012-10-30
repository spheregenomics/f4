class CreateSentenceWordXrefs < ActiveRecord::Migration
  def change
    create_table :sentence_word_xrefs do |t|
      t.references :sentence
      t.references :word

      t.timestamps
    end
    add_index :sentence_word_xrefs, :sentence_id
    add_index :sentence_word_xrefs, :word_id
  end
end
