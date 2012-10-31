class Tag < ActiveRecord::Base
  has_many :sentence_tag_xrefs
  has_many :sentences, :through => :sentence_tag_xrefs
  attr_accessible :tag, :tag_system_bitmap, :tag_type
end
