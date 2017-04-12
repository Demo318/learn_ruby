class Timer
  #write your code here



end
puts "How many seconds?"
number = gets.chomp.to_i
hours = number / (60*60)
number = number % (60*60)
minutes = number / 60
number = number % 60
seconds = number
number = number - seconds

puts "Hours: #{hours}."
puts "Minutes: #{minutes}."
puts "Seconds: #{seconds}."
puts "There are #{number}."
