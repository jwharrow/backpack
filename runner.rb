# require 'set'


## Test
# TRAVEL_TIME = 2.0 # days
# LONDON = [
#   Attraction.new({name: "westminster", cost: 0.5, value: 7}),
#   Attraction.new({name: "globe", cost: 0.5, value: 6}),
#   Attraction.new({name: "national_gallery", cost: 1.0, value: 9}),
#   Attraction.new({name: "british_museum", cost: 2.0, value: 9}),
#   Attraction.new({name: "st_pauls", cost: 0.5, value: 8})]
# INTERVAL = 0.5


puts "\nTests:\n\n"
# puts Picker.run(LONDON, TRAVEL_TIME, INTERVAL) == Set["national_gallery", "st_pauls", "westminster"]
require_relative 'dumb_picker'

p DumbPicker.new.all_backpacks(%w(a b))
puts "****"
p DumbPicker.new.all_backpacks(%w(a b c))

