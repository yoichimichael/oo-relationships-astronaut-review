class Astronaut
  attr_reader :name, :age, :specialty
  attr_accessor #:shuttles
  
  @@all = []

  def initialize(name, age, specialty)
    #if age >= 25
      @name = name
      @age = age
      @specialty = specialty
      #@shuttles = []
      Astronaut.all << self
    #end
  end

  def missions
    Mission.all.select { |mish| mish.crew.include?(self) }
  end

  def join_shuttle(shuttle, launch_date) ## should this be join_mission?
    found_mission = Mission.all.find do |mission| 
      mission.shuttle == shuttle && mission.launch_date == launch_date 
    end
    if age < shuttle.minimum_age
      "Does not meet age requirement"
    elsif found_mission.crew.count >= shuttle.capacity
      "This shuttle is at capacity!"
    else
      found_mission.crew << self
      #@shuttles << shuttle
    end
  end

  #modified
  def fellow_mission_members(mission)
    fellows = []
    mission.crew.each { |astro| fellows << astro.name if astro != self }
    fellows
  end

  #class methods
  
  def self.all
    @@all
  end

  def self.most_missions
    self.all.max_by { |astro| astro.missions.count }.name
      # num_of_misions = 0
      # Mission.all.each { |mission| num_of_missions += 1 if mission.shuttle.has_key?(astro) }
      # num_of_missions
    #end 
  end

  def self.top_three
    astronaut_mission_nums = Hash.new(0)
    Mission.all.each do |mish|
      mish.crew.each { |member| astronaut_mission_nums[member.name] += 1 }
    end
    astronaut_mission_nums.max_by(3) { |k,v| v }  
  end


end
