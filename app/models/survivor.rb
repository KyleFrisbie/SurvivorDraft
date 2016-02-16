class Survivor < ActiveRecord::Base
  has_and_belongs_to_many :players
  has_and_belongs_to_many :tribes
  has_and_belongs_to_many :seasons

  validates :name, presence: true
  validates :age, presence: true
  validates :residence, presence: true
  validates :photo_url, presence: true
end
