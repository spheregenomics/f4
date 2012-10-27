class MediaCatagory < ActiveRecord::Base
  belongs_to :course
  attr_accessible :description, :seq, :version
end
