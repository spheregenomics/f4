class SentenceTag < ActiveRecord::Base
  belongs_to :sentence
  attr_accessible :tag
end
