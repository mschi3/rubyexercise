module Valuable
   def self.worth(value)
     puts value
      if value>=500 and value<=1000
        puts 'Category A'
      elsif value>=100 and value<=499 
        puts 'Category B'
      elsif
        puts 'Category C'
      end  
   end
end

class Vehicle
  @@number_of_vehicles = 0 # class variable

  def initialize
    @@number_of_vehicles += 1
  end

  def self.total_number_of_vehicles
    @@number_of_vehicles
  end
  
  def self.mileage(miles,gallons)  #class method
    @total = miles/gallons
  end
  
end

class MyTruck < Vehicle
  include Valuable
  NO_OF_WHEELS = 4                 #Defining a  constant
end

class MyCar < Vehicle
  NO_OF_WHEELS = 4                 #Defining a  constant
  attr_accessor :color, :model
  attr_reader :year

  def initialize(y, c, m)
    @year  = y
    @color = c
    @model = m
    @current_speed = 0
    @total_mileage = 0
  end
  
  def present_speed
  	@current_speed
  	puts "Current speed: #{@current_speed}"
  end

  def speed_up(speed)
  	@current_speed +=speed
	  puts "Current speed: #{@current_speed}"
  end

  def brake(speed)
  	@current_speed -=speed
	  puts "Current speed: #{@current_speed}"
  end
  
  def cease_speed
    @current_speed = 0
	  puts "Current speed: #{@current_speed}"
  end

  def new_color(color)
  	self.color = color
  	puts "The New Color is #{color} "
  end	

  def info
    "My #{self.color} #{self.model} car was made on the year #{self.year}"
  end
  
  def age
    "Your #{self.model} is #{years_old} years old."
  end
  
  private
    def years_old
    Time.now.year - self.year
  end
end


car = MyCar.new('1965', 'red', 'Mustang')
puts car.info     
puts '------------------------------------------------'
puts car.present_speed
puts car.speed_up(10)
puts car.brake(20)
puts car.cease_speed
puts '------------------------------------------------'
puts car.color = 'pink'
puts car.year  #error will occur if you try to change the value of year
puts '------------------------------------------------'
puts "Previous color was #{car.color}"
puts car.new_color('Orange')
puts '-------------------------'
#vehicle = Vehicle.new ##cannot call using self. The self is a class method
#puts "The gas mileage is #{car.mileage(351, 13)}"
puts "The gas mileage is #{Vehicle.mileage(351, 13)}"
puts '------------------------------------------------'
puts Vehicle.total_number_of_vehicles   
vehicle1 = Vehicle.new
vehicle2 = Vehicle.new
puts Vehicle.total_number_of_vehicles  
mytruck = MyTruck.new
mytruck = Valuable.worth(499)
puts '------------------------------------------------'
car2 = MyCar.new(1965, 'red', 'Mustang')
car2.age

