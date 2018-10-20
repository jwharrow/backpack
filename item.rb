
class Item
  attr_reader :name, :cost, :value

  def initialize(args)
    @name = args[:name]
    @cost = args[:cost]
    @value = args[:value]
  end
end
