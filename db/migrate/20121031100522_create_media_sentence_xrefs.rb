class CreateMediaSentenceXrefs < ActiveRecord::Migration
  def change
    create_table :media_sentence_xrefs do |t|
      t.references :media
      t.references :sentence

      t.timestamps
    end
    add_index :media_sentence_xrefs, :media_id
    add_index :media_sentence_xrefs, :sentence_id
  end
end
