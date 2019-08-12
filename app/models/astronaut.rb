class Astronaut

  attr_reader :name, :age, :specialty
  @@all = []

  def initialize(name, age, specialty)
    @name = name
    @age = age
    @specialty = specialty

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_missions
    # Astronaut.all.find do |astronaut|
    #   astronaut.missions.count
    # end
    #max_by
    Astronaut.all.max_by do |astronaut|
      astronaut.missions.count
    end
  end

  #helper method
  def missions
    Mission.all.select do |mission|
      mission.astronaut == self
    end
  end

  def shuttles
    # call this method on an astronaut instance
    # return all of the shuttles that belong to the astronaut
    #go through the missions
    missions.map do |mission|
      mission.shuttle
    end
  end

  def join_shuttle(launch_date, shuttle)
    # compare: shuttle.capacity against current no of astronauts on that shuttle
    if shuttle.capacity > shuttle.missions.length
      Mission.new(launch_date, self, shuttle)
    else
      puts "This shuttle is at capacity!"
    end

  end

end
