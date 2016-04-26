CONVERSIONS = [[1000, 'M'], [500, 'D'], [100, 'C'],
               [50, 'L'], [10, 'X'], [5, 'V'], [1, 'I']]

def int_old_roman num
  roman = ''
  CONVERSIONS.each do |pair|
    if num/pair[0] > 0
      roman = roman + pair[1] * (num/pair[0])
      num = num % pair[0]
    end
  end
  roman
end

puts 'Enter a number between 1 and 3000:'
num = gets.chomp.to_i
old = int_old_roman num


puts num.to_s + ' in old roman is ' + old

