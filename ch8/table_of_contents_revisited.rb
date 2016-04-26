total = 45
left_one = 13
left_two = 25
right    = 3

contents = [[1, 'Getting Started', 1],
            [2, 'Numbers',         9],
            [3, 'Letters',        13]]

puts 'Table of Contents'.center(total)
puts

contents.each do |cont|
  puts ('Chapter ' + cont[0].to_s + ': ').ljust(left_one) +
        cont[1].ljust(left_two) + 'page' + cont[2].to_s.rjust(right)
end

