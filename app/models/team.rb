class Team < ApplicationRecord
  has_many :players
  has_many :competitions, through: :competition_team
  has_many :competition_teams
end
