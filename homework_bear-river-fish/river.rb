class River

  attr_reader :name, :fishes

  def initialize(name)
    @name = name
    @fishes = []
  end

  def add_fish(fish)
    #todo add test to see if a fish
    @fishes << fish
  end

  def fish_count
    @fishes.count
  end

end
