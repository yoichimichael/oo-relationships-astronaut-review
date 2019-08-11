class Shuttle

  attr_reader :model, :capacity
  @@all = []

  def initialize(model, capacity)
    @model = model
    @capacity = capacity

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_model
  end

  def add_astronaut
  end

  def current_astronauts
  end

end
