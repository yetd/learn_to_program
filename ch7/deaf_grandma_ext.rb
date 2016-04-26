byes = 0
while byes < 3
  puts 'Sonny:'
  sentence = gets.chomp

  puts 'Grandma: ' +
  if sentence == sentence.upcase
    if sentence == 'BYE'
      byes = byes + 1
    else
      byes = 0
    end

    if byes == 3
      'BYE SONNY'
    else
      year = rand(1930..1950)
      'NO, NOT SINCE ' + year.to_s
    end
  else
    byes = 0
    'HUH?!  SPEAK UP, SONNY!'
  end
end

