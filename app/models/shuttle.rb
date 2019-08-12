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
    #look thru all the shuttles
    Shuttle.all.find do |shuttle|
      shuttle.model == model
    end
  end

  def missions
    Mission.all.select do |mission|
      mission.shuttle == self
    end
  end

  def add_astronaut(launch_date, astronaut)
    # need to determine if the shuttle is at capacity
    # compare our capacity to the number of missions that we are assoc with
    if self.capacity > self.missions.count
      Mission.new(launch_date, astronaut, self)
    else
      puts "sorry no more space to go to mars, next time. seats are all full."
    end
  end

  def current_astronauts
    missions.map do |mission|
      mission.astronaut
    end
  end

end
