words = []

while true
  puts 'Enter a word: '
  word = gets.chomp
  if word == ''
    break
  else
    words.push(word)
  end
end

puts words.sort

