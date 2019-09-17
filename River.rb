class River

  attr_reader :name

  def initialize(name, shoal)
    @name = name
    @shoal = shoal
  end

  def get_shoal()
    return @shoal
  end

  # EXTENSION ------------------------------

  def fish_count()
    return @shoal.count
  end

end
