class LessonLayout < ActiveRecord::Base
  belongs_to :lesson
  has_many :layout_fields, :dependent => :destroy
  has_many :layout_tables, :dependent => :destroy
  attr_accessible :device_type, :layout_type, :seq, :version, :lesson_id
end
