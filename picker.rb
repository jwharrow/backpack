
class Picker
  attr_reader :items, :interval

  def self.run(items, capacity, interval)
    picker = self.new(items, capacity, interval)
    picker.run
  end

  def initialize(items, capacity, interval)
    @interval = interval
    number_of_slots = (capacity / interval).to_i
    @slots  = 1..number_of_slots
    @items  = items
    @matrix = Array.new(@items.length, nil)
    @backpack = []
  end
  # TODO: make a verbose mode that prints initial state, yields to run, prints end state, returns run's return

  def run
    puts "initial"
    puts self.items.map(&:name)
    @items.each_with_index do |item, i|
      @backpack = process_item(i)
    end
    puts "final:"
    puts self.items.map(&:name)
    return_backpack
  end

  def process_item(item)
    # check if item can fit in slot
    # if not, use values from previous row
    # if so, see if item is better than backpack value at that slot
    # so, slot needs to be a backpack.
    # SLOT IS THE BACKPACK
    # returned backpack is just last slot of last row.
    # BOOM
    # need a function to get total value of slot 
    #
    last_row = @matrix.last
    current_row = @slots.map do |slot|
      if item.cost > capacity_at_slot(slot)
        last_row[slot-1]
      elsif 

  end

  def capacity_at_slot(slot)
    slot * interval
  end

  def process_row(item_position)
    items_available = @items.take(item_position)
    current_backpack = []
    @slots.map do |slot|
      best_item = find_best_available_item(items_available, slot)
      current_backpack << best_item
      items_available - [best_item]
    end
    current_backpack
  end

  def find_best_available_item(items_available, current_copacity)
    items_available.reject{ |item| item.cost > current_copacity }.sort_by{ |item| item.value }.last
  end

  def return_backpack
    @backpack.map(&:name)
  end
end
