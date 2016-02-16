class PlayersSurvivors < ActiveRecord::Base
  belongs_to :player
  belongs_to :survivor
end
