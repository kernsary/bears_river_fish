class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach_contents = []
  end

  def get_stomach_contents()
    return @stomach_contents
  end

  def take_fish(river)
    fish_taken = river.get_shoal().pop
    @stomach_contents.push(fish_taken)
  end

end
