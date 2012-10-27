class LayoutTable < ActiveRecord::Base
  belongs_to :lesson_layout
  attr_accessible :col1, :col2, :col3, :col4, :row_num, :table_number, :version, :lesson_layout_id
end
