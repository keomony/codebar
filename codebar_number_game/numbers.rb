#!/usr/bin/env ruby
#codebar.oi tutorials 
#Introduction to Ruby
#Number game
#x and y are random numbers 
x = 0
y = 0
answer = 0
turns = 0
right = 0
wrong = 0
starting = 0
ending = 0
starting = Time.now
print "How many times?"
times = gets.to_i 
if times <= 0 || times == nil
    times = 1
end     
#if times == nil 
 #   times ||=1
#end    
while turns < times do
    x = Random.rand(1..5)
    y = Random.rand(5..10)
    print "#{x}+#{y}="
    answer = gets.to_i
    if answer == x+y
        right = right+1 
        puts "Right!"
    else
        wrong = wrong+1
        puts "Wrong!"
    end
    turns = turns +1    
end
ending = Time.now
score = (right * 100)/times
puts "rights:#{right}, wrongs:#{wrong}, score:#{score}%, total time:#{ending-starting} seconds,#{(ending-starting)/times} seconds per problem "
    