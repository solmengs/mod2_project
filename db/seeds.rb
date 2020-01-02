tournament_location = [ "Seattle", "Renton", "Kent", "Seatac","Lynwood", "Federalway"]
10.times do |n|
    Tournament.create(location: tournament_location.sample)
end

20.times do |n|
    Team.create(name: Faker::Esport.team, point: rand(15..100))
end

20.times do |n|
    TournamentTeam.create(team_id: rand(1..20) , tournament_id: rand(1..10))
end

300.times do |n|
    Player.create(name: Faker::Name.name_with_middle , age: rand(10..50), team_id: rand(1..20))
end

days = [ "moneday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"]

40.times do |n|
    Game.create( time: "#{rand(0..12)} : 00 PM", day: days.sample, tournament_id: rand(1..10))
end

