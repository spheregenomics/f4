class Media < ActiveRecord::Base
  belongs_to :media_catagory
  attr_accessible :description, :file_bitmap, :media_filename, :media_name
end
