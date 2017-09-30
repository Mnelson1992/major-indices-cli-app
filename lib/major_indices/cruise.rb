class MajorIndices::Cruise
  attr_accessor :name, :description

  @@all =[]

  def initialize(name, description)
    @name = name
    @description = description
    @@all << self
  end

  def all
    @@all
  end 

end
