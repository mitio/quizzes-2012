class Quiz < ActiveRecord::Base
  has_many :questions
  belongs_to :user

  validates_presence_of :name
  validates_uniqueness_of :name

  attr_accessible :name
end
