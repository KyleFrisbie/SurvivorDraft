class SeasonsSurvivors < ActiveRecord::Base
  belongs_to :season
  belongs_to :survivor
end
