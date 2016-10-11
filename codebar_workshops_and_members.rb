
class Person
    attr_reader :fullname
    def initialize (fullname)
        @fullname = fullname
    end    
end    

class Student < Person
    attr_reader :about
    def initialize (fullname,about)
        super(fullname)
        @about = about
    end
     def print_details
        "#{@fullname} - #{@about}" 
     end
end    

class Coach < Person
    attr_reader :bio, :skills
    def initialize (fullname, bio)
        super(fullname)
        @bio = bio
        @skills = []
    end    
    def add_skill(*skill)
        skill.each do |s|
            @skills << s
        end    
    end   
    def print_details
        "#{@fullname} - #{@skills.join(", ")} - #{@bio}" 
    end
end    

class Workshop
    def initialize (date, venue_name)
        @date = date
        @venue_name = venue_name
        @coaches = []
        @students = []
     end 
     def add_participant(member)
         if member.is_a?(Student) 
             @students << member
         elsif member.is_a?(Coach)
             @coaches << member
         end   
     end 
     def print_details
         puts "Workshop - #{@date} - Venue: #{@venue_name}" 
         puts "Students"
         @students.each_with_index do |s,i|
           puts  "#{i+1}. #{s.print_details}"  
         end   
         puts "Coaches"   
         @coaches.each_with_index do |c,i|
             puts  "#{i+1}. #{c.print_details}"
         end    
     end     
end    

workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")

workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)
workshop.print_details
