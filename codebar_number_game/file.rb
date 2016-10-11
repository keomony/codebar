#!/usr/bin/env ruby
#filename = "color.txt"
#file = File.open(filename, "w")
#file.puts "red"
#file.puts "green"
#file.puts "blue"
#file.close
filename = "colors.txt"
File.open(filename,"w") {|file| 
    file.write ("green")
    file.write ("red")
    file.write ("blue")
    }
filename = "animals.txt"       
File.open(filename,"r") {|file|
    while line = file.gets
        puts line
    end    
}