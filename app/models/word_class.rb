class WordClass < ActiveRecord::Base
  has_and_belongs_to_many :pairs
end
