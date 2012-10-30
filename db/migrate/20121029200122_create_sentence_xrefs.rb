class CreateSentenceXrefs < ActiveRecord::Migration
  def change
    create_table :sentence_xrefs do |t|
      t.integer :sentence_from
      t.integer :sentence_to

      t.timestamps
    end
  end
end
