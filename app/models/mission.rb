class Mission
  attr_accessor :shuttle, :launch_date

  @@all = []
  
  def initialize(shuttle, launch_date)
    @shuttle = shuttle
    @launch_date = launch_date
    Mission.all << self
  end

  #class methods

  def self.all
    @@all
  end

  def self.first_launch
    earliest_mission = self.all.min_by { |mish| mish.launch_date }
    earliest_mission.shuttle.crew.map { |member,date| member }
  end

end