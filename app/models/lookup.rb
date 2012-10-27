class Lookup < ActiveRecord::Base
  attr_accessible :field_name, :lookup_text, :note, :model_name
  
end