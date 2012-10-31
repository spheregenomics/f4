class SentenceTagXref < ActiveRecord::Base
  belongs_to :sentence
  belongs_to :tag
  # attr_accessible :title, :body
end
