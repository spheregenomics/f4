class UserBadgeXref < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge
  # attr_accessible :title, :body
end
