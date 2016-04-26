puts 'Enter a starting year: '
starting = gets.chomp.to_i

puts 'Enter an ending year: '
ending = gets.chomp.to_i

puts 'The leap years between ' + starting.to_s + ' and ' + ending.to_s + ' are:'

current = starting
while current <= ending
  if current % 400 == 0
    puts current
  elsif current % 100 == 0
  elsif current % 4 == 0
    puts current
  end
  current = current + 1
end

