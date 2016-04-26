CONVERSIONS = [[1000, 'M'], [500, 'D'], [100, 'C', 'D', 'M'],
               [50, 'L'], [10, 'X', 'L', 'C'], [5, 'V'],
               [1, 'I', 'V', 'X']]

def int_to_roman number
  roman = []

  CONVERSIONS.each do |pair|
    total = number / pair[0]

    if total == 4 && (pair[1] == 'X' || pair[1] == 'C' || pair[1] == 'I')
      if roman.last == pair[2]
        roman.pop
        roman.push(pair[1], pair[3])
      else
        roman.push(pair[1], pair[2])
      end
    else
      total.times do
        roman.push(pair[1])
      end
    end

    number = number % pair[0]
  end
  roman
end

puts 'Enter a number between 1 and 3000:'
number = gets.chomp.to_i
roman  = int_to_roman(number)

puts number.to_s + ' to roman is ' + roman.join

