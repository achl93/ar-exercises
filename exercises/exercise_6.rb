require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class UpdateEmployees < ActiveRecord::Base

  @store1 = Store.find(1)
  @store2 = Store.find(2)
  @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
  @store2.employees.create(first_name: "Don", last_name: "Burks", hourly_rate: 60)
  @store1.employees.create(first_name: "David", last_name: "VanDusen", hourly_rate: 60)
  @store2.employees.create(first_name: "Joel", last_name: "Shinness", hourly_rate: 60)

end