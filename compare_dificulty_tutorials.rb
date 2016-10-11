# Compare the dificulty of those turorials available in codebar
# Only the same subjects' dificulty could be compared

class Tutorial
    attr_reader :type , :dificulty
    def initialize (name, type, dificulty)
        @name = name
        @type = type
        @dificulty = dificulty 
    end
    def is_harder_than?(another_tutorial)
        if @type != another_tutorial.type
            return "You cannot compare a #{@type} with a #{another_tutorial.type} tutorial" 
         end   
         dificulties = [:easy, :medium, :hard, :advanced, :expert]
         if dificulties.index(@dificulty) > dificulties.index(another_tutorial.dificulty)
             true
         else
              false
         end      
    end    
end
    
tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
tutorial3 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :medium)

p tutorial1.is_harder_than?(tutorial2)
# You cannot compare a Ruby with a JavaScript tutorial

p tutorial2.is_harder_than?(tutorial1)
# You cannot compare a JavaScript with a Ruby tutorial

p tutorial2.is_harder_than?(tutorial3)
# false

p tutorial3.is_harder_than?(tutorial2)
# true