require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sarah", last_name: "Sears", hourly_rate: 45)
@store2.employees.create(first_name: "Jackson", last_name: "Wiltshire", hourly_rate: 57)
@store2.employees.create(first_name: "Reilly", last_name: "Sheppard", hourly_rate: 41)

puts "Employees: #{Employee.count}"