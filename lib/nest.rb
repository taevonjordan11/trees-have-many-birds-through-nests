class Nest
  attr_reader :tree, :bird
  @@all = []
  def initialize(bird, tree)
    @tree = tree
    @bird = bird
    Nest.all << self
  end
  def self.all
      @@all
  end


end
