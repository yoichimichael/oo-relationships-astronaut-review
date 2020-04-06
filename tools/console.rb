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

m10_a = Mission.new(discovery, 2010)
m10_b = Mission.new(voyager, 2010)
m11 = Mission.new(whistler, 2011)
m12 = Mission.new(adirondak, 2012)
m14 = Mission.new(yosemite, 2014)
m17 = Mission.new(discovery, 2017)
m18_a = Mission.new(voyager, 2018)
m18_b = Mission.new(whistler, 2018)
m19 = Mission.new(adirondak, 2019)
m20 = Mission.new(yosemite, 2020)
m21_a = Mission.new(discovery, 2021)
m21_b = Mission.new(voyager, 2021)

m22 = discovery.add_mission(2023)

discovery.add_astronaut(mike, 2023)
discovery.add_astronaut(sally, 2023)
discovery.add_astronaut(jon, 2023)

m11.add_crew_member(paul)
m11.add_crew_member(hank)
m11.add_crew_member(will)
m11.add_crew_member(ellen)

m17.add_crew_member(will)
m17.add_crew_member(peter)
m10_a.add_crew_member(rich)
m14.add_crew_member(rich)
m19.add_crew_member(rich)


#discovery.add_astronaut(tad, 2023)

binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
