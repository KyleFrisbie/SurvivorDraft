class Tribe < ActiveRecord::Base
  has_and_belongs_to_many :survivors

  validates :name, presence: true
  validates :tribe_generation, presence: true
  validates :immunity_wins, presence: true
  validates :reward_wins, presence: true
end
