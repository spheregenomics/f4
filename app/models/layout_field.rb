class LayoutField < ActiveRecord::Base
  belongs_to :lesson_layout
  attr_accessible :field_name, :field_value, :version, :lesson_layout_id
end
