puts 'What is your first name?'
name = gets.chomp
puts 'What is your last name?'
last = gets.chomp

puts 'There are ' + (name.length + last.length).to_s + ' letters in your name'

