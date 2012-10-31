class MediaSentenceXref < ActiveRecord::Base
  belongs_to :media
  belongs_to :sentence
end
