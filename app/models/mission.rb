class Mission

  # instance method that returns a launch_date
  attr_reader :launch_date
  attr_accessor :astronaut, :shuttle

  # class variable that represents an array of all the missions
  @@all = []

  # upon initialization, a mission needs to link a specific astronaut instance with a specific shuttle instance
  # all missions should be added to the @@all array
  def initialize(launch_date, astronaut, shuttle)
    @launch_date = launch_date
    @astronaut = astronaut
    @shuttle = shuttle

    @@all << self
  end

  # class method that returns all of the mission instance in an array 
  def self.all
    @@all
  end

end
