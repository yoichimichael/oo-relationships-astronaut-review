class Astronaut
  attr_reader :name, :age, specialty
  attr_accessor :shuttles
  
  @@all = []

  def initialize(name, age, specialty)
    @name = name
    @age = age
    @specialty = specialty
    @shuttles = []
    Astronaut.all << self
  end

  def join_shuttle(shuttle, launch_date)
    if shuttle.crew.count < shuttle.capacity
      shuttle.crew << { self ==> launch_date }
      @shuttles << shuttle
    else
      "This shuttle is at capacity!"
    end
  end

  #class methods
  
  def self.all
    @@all
  end

  def self.most_missions
    self.all.max_by do |astro|
      num_of_misions = 0
      Mission.all.each { |mission| num_of_missions += 1 if mission.shuttle.has_key?(astro) }
      num_of_missions
    end 
  end

  def self.top_three
    astronaut_mission_nums = Hash.new(0)
    Mission.all.each do |mish|
      mish.shuttle.crew.each { |member| astronaut_mission_nums[member.keys[0]] += 1 }
    end
    astronaut_mission_nums.max(3) { |k,v| v }  
  end


end
