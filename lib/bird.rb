class Bird
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

#a bird knows all its nests
  def nests
    Nest.all.select do |nest|
      nest.bird == self
    end
  end

#a bird knows all its trees
  def trees
    nests.map do |tree_instance|
      tree_isntance.tree
    end
  end

#a bird can create a nest
  def create_nest(tree)
    Nest.new(self, tree)
  end

end
