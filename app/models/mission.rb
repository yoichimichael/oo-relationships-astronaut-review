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

  #class methods

  def self.all
    @@all
  end

  def self.first_launch
    earliest_mission = self.all.min_by { |mish| mish.launch_date }
    earliest_mission.shuttle.crew.map { |member,date| member }
  end

end