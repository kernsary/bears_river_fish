class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach_contents = []
  end

  def get_stomach_contents
    return @stomach_contents
  end


end
