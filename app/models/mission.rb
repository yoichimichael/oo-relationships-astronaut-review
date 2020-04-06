class Mission
  attr_accessor :shuttle, :launch_date, :crew

  @@all = []
  
  def initialize(shuttle, launch_date)
    @shuttle = shuttle
    @launch_date = launch_date
    @crew = []
    Mission.all << self
  end

  def add_crew_member(astronaut)
    if  astronaut.age < shuttle.minimum_age
      "Does not meet age requirement"
    elsif crew.count >= shuttle.capacity 
      "This shuttle is at capacity!"
    else
      crew << astronaut
    end
  end

  def crew_average_age 
    total_age = self.crew.sum { |member| member.age  }
    (total_age.to_f / self.crew.count).round(2)
  end

  def crew_specialties
    crew.map { |member| member.specialty }
  end

  #class methods

  def self.all
    @@all
  end

  def self.smallest_mission
    self.all.min_by { |mish| mish.crew.count }
  end

  def self.most_common_shuttle_model
    model_occurences = Hash.new(0)
    self.all.each { |mish| model_occurences[mish.shuttle.model] += 1 }
    model_occurences.each { |k, v| return k if v == model_occurences.values.max }
  end

  def self.first_launch
    earliest_mission = self.all.min_by { |mish| mish.launch_date }
    earliest_mission.crew
  end

end