class MediaCatagory < ActiveRecord::Base
  has_many :media, :dependent => :destroy
  attr_accessible :description, :media_cat, :seq, :version
end
