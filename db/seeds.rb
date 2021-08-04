# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@competition = Competition.create!(name:'Kitzbühel', location:'Austria', sport:'downhill skiing')
@team1 = Team.create(hometown:'Austria',nickname:"crazy skiers")
@team2 = Team.create(hometown:'US',nickname:"skiers")
@player1 = @team1.players.create(name:"Bode Miller", age:50)
@player2 = @team2.players.create(name:"Hermann Maier", age:100)
@player3 = @team2.players.create(name:"Aksel Lund Svindal", age:30)
@bracket1 = CompetitionTeam.create(competition_id: @competition.id,team_id: @team1.id)
@bracket2 = CompetitionTeam.create(competition_id: @competition.id,team_id: @team2.id)