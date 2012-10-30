class Word < ActiveRecord::Base
  attr_accessible :fluent_language, :foreign_language, :word_fluent, :word_foreign
end
