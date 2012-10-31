class User < ActiveRecord::Base
  attr_accessible :diaspora_login, :shapado_login, :user_name
end
