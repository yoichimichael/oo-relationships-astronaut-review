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
  end

  def shuttles
  end

  def join_shuttle
  end

end
