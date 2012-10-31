class CreateSentenceTagXrefs < ActiveRecord::Migration
  def change
    create_table :sentence_tag_xrefs do |t|
      t.references :sentence
      t.references :tag

      t.timestamps
    end
    add_index :sentence_tag_xrefs, :sentence_id
    add_index :sentence_tag_xrefs, :tag_id
  end
end
