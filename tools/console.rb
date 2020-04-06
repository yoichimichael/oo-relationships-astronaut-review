require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mike = Astronaut.new("Michael Smith", 26, "physics")
tad = Astronaut.new("Theodore Milner", 24, "medecine")
sally = Astronaut.new("Elizabeth Gardner", 31, "chemisty")
jon = Astronaut.new("Jonathan", 40, "navigation")
peter = Astronaut.new("Peter Venkman", 38, "spirituality")
rich = Astronaut.new("Richard Polonyi", 41, "dentistry")
megan = Astronaut.new("Megan Tellman", 23, "gardening")
fran = Astronaut.new("Frances Dempsey", 32, "physiognamy")
karen = Astronaut.new("Karen Kilgore", 34, "psychology")
ellen = Astronaut.new("Ellen Farmer", 38, "engineering")
paul = Astronaut.new("Paul Zimmer", 40, "theology")
hank = Astronaut.new("Henry Waterhouse", 29, "engineering")
will = Astronaut.new("William Canter", 33, "navigation")

discovery = Shuttle.new("BOE432", 3)
voyager = Shuttle.new("DAE190", 4)
whistler = Shuttle.new("WAD887", 5)
adirondak = Shuttle.new("RES854", 7)
yosemite = Shuttle.new("YOS629", 5)

m1 = Mission.new(discovery, 2010)
m2 = Mission.new(voyager, 2010)
m3 = Mission.new(whistler, 2011)
m4 = Mission.new(adirondak, 2012)
m5 = Mission.new(yosemite, 2014)
m6 = Mission.new(discovery, 2017)
m7 = Missions.new(voyager, 2018)
m8 = Missions.new(whistler, 2018)
m9 = Missions.new(adirondak, 2019)
m10 = Missions.new(yosemit, 2020)
m11 = Missions.new(discovery, 2021)



binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
