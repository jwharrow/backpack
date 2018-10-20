require_relative 'backpack'

class DumbPicker
  def self.run(items, capacity)
    self.new.run(items, capacity)
  end

  def run(items, capacity)
    backpacks = all_backpacks(items)
    backpacks.reject{ |backpack| backpack.cost > capacity }
    .sort(&:value)
    .first
  end

  def all_backpacks(items) ## gathering combinations
    backpacks = []
    items.each_with_index do |item, index|
        backpacks << [item]
        if index < items.length - 1
            sub_backpacks = all_backpacks(items.slice((index + 1)..items.length))
            sub_backpacks.each do |sub_backpack|
               # backpacks << sub_backpack
                backpacks << [item] + sub_backpack
            end
        end
    end
    backpacks
  end

end

## simplex tableau