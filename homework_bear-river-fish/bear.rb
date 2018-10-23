# just realised the requires gives us our dependencies graph
require_relative('river')

class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def pluck_fish(river)
    # raises an interesting question. Should I ask the river to
    # give me a fish? Should probably not be dipping directly into
    # river like this (even though that happens IRL)
    unlucky_fish = river.fishes.shift
    @stomach << unlucky_fish
  end

  def roar
    "raawwwr i are #{@type} bear my naem is #{@name}"
  end

  def food_count
    @stomach.count  # could use length but count sounds better!
  end

end
