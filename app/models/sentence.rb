class Sentence < ActiveRecord::Base
  has_many :media_sentence_xrefs
  has_many :media, :through => :media_sentence_xrefs
  has_many :sentence_tag_xrefs
  has_many :tags, :through => :sentence_tag_xrefs
  attr_accessible :language, :sentence
end
