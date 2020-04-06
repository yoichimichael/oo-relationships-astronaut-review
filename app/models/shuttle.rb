class Shuttle
  attr_reader :model, :capacity
  attr_accessor :crew

  @@all = []

  def initialize(model = nil, capacity = 1)
    @model = model
    @capacity = capacity
    @crew = []
    Shuttle.all << self
  end

  #instance methods

  def add_astronaut(astronaut, launch_date)
    if crew.count < capacity
      crew << { astronaut => launch_date }
    else
      "This shuttle is at capacity!"
    end

  end

  def current_astronauts
    self.crew.map { |member| member.keys[0].name }
  end

  #class methods

  def self.all
    @@all
  end

  def self.find_by_model(model)
    self.all.find { |shuttle| shuttle.model == model }
  end


end
