require 'rails_helper'

RSpec.describe CompetitionTeam do
describe 'relationships' do
  it {should belong_to :team}
  it {should belong_to :competition}
end

describe 'class methods' do

end
describe 'instance methods' do

end
end