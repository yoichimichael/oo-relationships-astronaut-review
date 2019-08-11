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

  def add_astronaut
  end

  def current_astronauts
  end

  def find_by_model
  end 

end
