# Description:
# In the example below, we create a Person class and a SuperHero class. 
#As not all people have superpowers, we can use SuperHero for those with superpowers and Person for anyone else.

class Person
    
    def initialize(name, age)
        @name = name
        @age = age
    end
    def to_s
          "#{@name} is #{@age} years old."  
    end    
end
    
class SuperHero < Person
   def initialize(name,age, superpower)
       super(name,age)
       @superpower = superpower
   end   
   #it's overriding method
   def to_s
        "#{@name} is #{@age} years old and has the superpower #{@superpower}"  
   end      
end       

emily = Person.new("Emily", 28)
jean_grey = SuperHero.new("Jean Grey", 51, "Telekinesis")

p emily.is_a?(Person)
#true

p jean_grey.is_a?(Person)
#true

p emily.is_a?(SuperHero)
#false

p jean_grey.is_a?(SuperHero)
#true