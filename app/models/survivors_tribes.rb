class SurvivorsTribes < ActiveRecord::Base
  belongs_to :survivor
  belongs_to :tribe
end
