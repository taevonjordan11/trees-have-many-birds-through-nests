class Tree
  attr_reader :type
  @@all = []
  def initialize(type)
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

#a tree knows of its nests 
  def nests
    Nest.all.select do |nest|
      nest.tree == self
    end
  end

#wants to return the species of birds within said tree instance
  def birds
    nests.map do |nest|
      nest.bird.species
    end
  end

#a tree knows how many birds are in it
  def total_birds
    birds.count
  end

end
