class Question < ActiveRecord::Base
  belongs_to :quiz

  validates_presence_of :name, :quiz_id
  validates_uniqueness_of :name, scope: :quiz_id

  attr_accessible :name, :quiz_id
end
