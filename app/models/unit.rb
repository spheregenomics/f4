class Unit < ActiveRecord::Base
  belongs_to :course
  #has_many :unit_layouts, :dependent => :destroy
  has_many :lessons, :dependent => :destroy
  attr_accessible :description, :seq, :status, :synopsis, :unit_name, :unit_type, :version, :course_id
end
