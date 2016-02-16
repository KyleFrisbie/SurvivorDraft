class Player < ActiveRecord::Base
  has_and_belongs_to_many :survivors

  validates :name, presence: true
end
