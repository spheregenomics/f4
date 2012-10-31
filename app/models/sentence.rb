class Sentence < ActiveRecord::Base
  has_many :media_sentence_xrefs
  has_many :media, :through => :media_sentence_xrefs
  attr_accessible :language, :sentence
end
