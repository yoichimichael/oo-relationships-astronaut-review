class Shuttle
  attr_reader :model, :capacity
  attr_accessor #:crew

  @@all = []

  def initialize(model, capacity)
    @model = model
    @capacity = capacity
    #@crew = [] #note: each 'member' is a hash {astro => date}
    Shuttle.all << self
  end

  #instance methods

  def missions
    Mission.all.select { |mish| mish.shuttle == self}
  end

  def add_mission(launch_date)
    Mission.new(self, launch_date)
  end

  def add_astronaut(astronaut, launch_date) # should this be add mission?
    found_mission = missions.find { |mission| mission.launch_date == launch_date }
    if  astronaut.age < minimum_age
      "Does not meet age requirement"
    elsif found_mission.crew.count >= capacity 
      "This shuttle is at capacity!"
    else
      found_mission.crew << astronaut
    end
  end

  def current_astronauts(launch_date) ## adjusting to have crew of ship attached to mission
    found_mission = missions.find { |mish| mish.launch_date == launch_date }
    found_mission.crew.map { |member| member.name }
  end
  
  ## moved to mission class with adjustments
  # def average_age(mission) 
  #   total_age = mission.crew.sum { |member| member.age  }
  #   total_age / mission.crew.count
  # end

  ## moved to mission class with adjustments 
  # def astronauts_specialties
  #   crew.each { |member| puts member.keys[0].specialty }
  # end

  def minimum_age
    25
  end

  #class methods

  def self.all
    @@all
  end

  def self.find_by_model(model)
    self.all.find { |shuttle| shuttle.model == model }
  end

  ##moving to Mission w/ changes
  # def self.smallest_mission
  #   self.all.min_by { |shuttle| shuttle.crew.count }
  # end


  ##moving to Mission w/ changes
  # def self.most_common_model
  #   model_occurences = Hash.new(0)
  #   self.all.each { |shuttle| model_occurences[shuttle.model] += 1 }
  #   model_occurences.each { |k, v| return k if v == model_occurences.values.max }
  # end


end
