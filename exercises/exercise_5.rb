require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

class Calculations < ActiveRecord::Base

@revenue_sum = Store.all.sum(:annual_revenue)
puts @revenue_sum
puts "#{@revenue_sum / Store.count}"
@big_earners = Store.where("annual_revenue > ?", 1000000).size
puts @big_earners

end
