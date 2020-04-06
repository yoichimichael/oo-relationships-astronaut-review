class Mission
  attr_accessor :launch_date

  @@all = []
  
  def initialize(shuttle, launch_date)
    @shuttle = shuttle
    @launch_date = launch_date
  end

  #class methods

  def self.all
    @@all
  end

end