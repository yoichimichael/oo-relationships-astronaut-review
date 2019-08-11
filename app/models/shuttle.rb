class Shuttle

  attr_reader :model, :capacity
  @@all = []

  def initialize(model, capacity)
    @model = model
    @capacity = capacity

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_model(model)
    Shuttle.all.find do |spaceship|
      spaceship.model == model
    end
  end

  def missions
    Mission.all.select do |mission|
      mission.shuttle == self
    end
  end

  def add_astronaut(astronaut, launch_date)
    if self.missions.length < self.capacity
      Mission.new(launch_date, astronaut, self)
    else
      puts "Sorry, this mission is already full!"
    end
  end

  def current_astronauts
    missions.map do |mission|
      mission.astronaut
    end
  end

end
