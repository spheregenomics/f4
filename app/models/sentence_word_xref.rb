class SentenceWordXref < ActiveRecord::Base
  belongs_to :sentence
  belongs_to :word
  # attr_accessible :title, :body
end
