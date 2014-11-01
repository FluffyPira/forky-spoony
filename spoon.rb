#!/usr/bin/env ruby
#Let's play a little game called forky spoony
def spoon(fork)
  loop do
    puts "spoon?"
    spoon = gets.chomp.downcase
    
    if fork.include?(spoon)
      fork.fill(spoon + "!")
      break
    else
      puts "spoon?"
    end
  end
  fork
end

if rand < 0.5
  fork = ['fork']
else
  fork = ['spoon']
end

fork = spoon(fork)
puts fork