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

  def shuttles
  end

  def join_shuttle
  end 

  def most_missions
  end

end
