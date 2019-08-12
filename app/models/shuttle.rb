class Shuttle

  # instance method that returns a shuttle's model
  # instance method that returns a shuttle's capacity
  attr_reader :model, :capacity

  # class variable that represents an array of all the shuttles
  @@all = []

  # upon initialization, create a shuttle with a model and a capacity and add that new shuttle to the @@all array
  def initialize(model, capacity)
    @model = model
    @capacity = capacity

    @@all << self
  end

  # class method that returns an array of all the shuttles
  def self.all
    @@all
  end

  # class method that returns a shuttle instance that matches the argument of a model number
  def self.find_by_model(model)
    Shuttle.all.find do |spaceship|
      spaceship.model == model
    end
  end

  # instance method that returns all of the missions associated with this shuttle (helper method)
  def missions
    Mission.all.select do |mission|
      mission.shuttle == self
    end
  end

  # instance method to add an astronaut to this shuttle
  # only if the capacity of this shuttle is greater than the number of missions associated with this shuttle (helper method above)
  def add_astronaut(astronaut, launch_date)
    if self.missions.length < self.capacity
      Mission.new(launch_date, astronaut, self)
    else
      puts "Sorry, this mission is already full!"
    end
  end

  # instance method that returns an array of all astronauts who have been on this shuttle
  def current_astronauts
    missions.map do |mission|
      mission.astronaut
    end
  end

end
