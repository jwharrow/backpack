
class Backpack
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def cost  ; @cost ||= @items.sum(&:cost)   ; end
  def value ; @value ||= @items.sum(&:value) ; end

  def add_item(item)
    @items << item
  end
end

