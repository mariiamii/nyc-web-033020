require 'pry'

class Person
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def say_name
    "Hi, my name is #{self.name}"
  end

  def Person.say_class_name
    "Hi, I am of class #{self.name}"
  end
end

steven = Person.new("Steven")

binding.pry 
puts 'okthxbye'

















