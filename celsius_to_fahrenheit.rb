#Description

#This excersise is from codebar.io tutorials.
#Fill in the temperature for each day of the week and prints out the result

class Celsius 
	
	#attr_reader :temperature
	def initialize (temperature)
		@temperature = temperature.to_i
	end	
	
	def celsius_to_fahrenheit()
		((@temperature * 1.8) + 32).round
	end	
	def to_s 
		"#{@temperature} degrees C | #{celsius_to_fahrenheit} degrees F"
	end
		
end
days_of_week = {mon: 0,tue: 0,wed: 0}

 days_of_week.keys.each do |d|
    days_of_week[d]=gets
  end
  days_of_week.each do |k, v|
	celsius = Celsius.new(v)
    puts "#{k.capitalize} | #{celsius.to_s}" 
  end
	  


