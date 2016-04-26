sentence = ''

while sentence != 'BYE'
  puts 'Sonny:'
  sentence = gets.chomp

  puts 'Grandma:' +
  if sentence == 'BYE'
    'BYE SONNY'
  elsif sentence.upcase == sentence
    year = rand(1930..1950)
    'NO, NOT SINCE ' + year.to_s + '!'
  else
    'HUH?!  SPEAK UP, SONNY!'
  end
end

