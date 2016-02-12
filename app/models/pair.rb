class Pair < ActiveRecord::Base
  has_and_belongs_to_many :books
  has_and_belongs_to_many :word_classes
end
