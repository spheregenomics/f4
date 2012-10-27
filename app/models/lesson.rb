class Lesson < ActiveRecord::Base
  belongs_to :unit
  has_many :lesson_layouts, :dependent => :destroy
  attr_accessible :description, :lesson_name, :lesson_type, :seq, :status, :synopsis, :version, :unit_id
end
