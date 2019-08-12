class Astronaut

  # instance method that returns the name
  # instance method that returns the age
  # instance method that returns the specialty
  attr_reader :name, :age, :specialty

  # class variable that represents an array of all astronauts
  @@all = []

  # upon initialization, create an astronaut with a name, age, and specialty
  # add that astronaut to the @@all array
  def initialize(name, age, specialty)
    @name = name
    @age = age
    @specialty = specialty

    @@all << self
  end

  # class method that returns an array of all the astronauts
  def self.all
    @@all
  end

  # class method that returns the astronaut instance that has been on the most missions
  def self.most_missions
    self.all.max_by do |astronaut|
      astronaut.missions.length
    end
  end

  # instance method that should return all of the missions that any astronaut has been on (helper method)
  def missions
    Mission.all.select do |mission|
      mission.astronaut == self
    end
  end

  # instance method that will return an array of all shuttles an astronaut has riden on
  def shuttles
    missions.map do |mission|
      mission.shuttle
    end
  end

  # instance method that will add an astronaut to a shuttle as long as the shuttle's capacity isn't already full  
  def join_shuttle(shuttle, launch_date)
    if shuttle.capacity > shuttle.missions.length
      Mission.new(launch_date, self, shuttle)
    else
      puts "Sorry, this mission is already full!"
    end
  end

end
