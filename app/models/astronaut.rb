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
    self.all.max_by do |astronaut|
      astronaut.missions.length
    end
  end

  def missions
    Mission.all.select do |mission|
      mission.astronaut == self
    end
  end

  def shuttles
    missions.map do |mission|
      mission.shuttle
    end
  end

  def join_shuttle(shuttle, launch_date)
    if shuttle.capacity > shuttle.missions.length
      Mission.new(launch_date, self, shuttle)
    else
      puts "Sorry, this mission is already full!"
    end
  end

end
