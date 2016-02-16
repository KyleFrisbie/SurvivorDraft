class Season < ActiveRecord::Base
  has_and_belongs_to_many :survivors

  validates :number, presence: true
  validates :name, presence: true
  validates :location, presence: true
end
