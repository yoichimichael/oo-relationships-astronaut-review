class Shuttle
  attr_reader :model, :capacity
  attr_accessor :crew

  @@all = []

  def initialize(model = nil, capacity = 1)
    @model = model
    @capacity = capacity
    @crew = [] #note: each 'member' is a hash {astro => date}
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
    crew.map { |member| member.keys[0].name }
  end

  def average_age
    total_age = crew.sum { |member| member.keys[0].age  }
    total_age / crew.count
  end

  def astronauts_specialties
    crew.each { |member| puts member.keys[0].specialty }
  end

  #class methods

  def self.all
    @@all
  end

  def self.find_by_model(model)
    self.all.find { |shuttle| shuttle.model == model }
  end

  def self.smallest_mission
    self.all.min_by { |shuttle| shuttle.crew.count }
  end

  def self.most_common_model
    model_occurences = Hash.new(0)
    self.all.each { |shuttle| model_occurences[shuttle.model] += 1 }
    model_occurences.each { |k, v| return k if v == model_occurences.values.max }
  end


end
