require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Validations < ActiveRecord::Base

  puts "Enter a store name: "
  input = gets.chomp
  create = Store.create(name: input)
  # Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
  # create.errors.each_slice(1) { |msg| puts msg }
  puts create.errors.full_messages

end
