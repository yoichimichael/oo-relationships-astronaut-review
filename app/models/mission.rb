class Mission

  attr_reader :launch_date
  attr_accessor :astronaut, :shuttle

  @@all = []

  def initalize(launch_date, astronaut, shuttle )
    @launch_date = launch_date
    @astronaut = astronaut
    @shuttle = shuttle

    @@all << self
  end

  def self.all
    @@all
  end 

end
