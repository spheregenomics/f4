class Media < ActiveRecord::Base
  belongs_to :media_catagory
  has_many :media_sentence_xrefs
  has_many :sentences, :through => :media_sentence_xrefs
  attr_accessible :seq, :description, :file_bitmap, :media_filename, :media_name, :media_catagory_id
end
