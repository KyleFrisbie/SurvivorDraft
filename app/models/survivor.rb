class Survivor < ActiveRecord::Base
  has_and_belongs_to_many :players
  belongs_to :tribe
end
