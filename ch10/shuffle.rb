def shuffle ar
  numbers = []
  while ar.length != numbers.length
    rand_numb = rand(ar.length)
    found     = false

    numbers.each do |num|
      if rand_numb == num
        found = true
        break
      end
    end
    if not found
      numbers.push(rand_numb)
    end
  end

  new_order = []
  numbers.each do |num|
    new_order.push(ar[num])
  end
  new_order
end

words = ['alma', 'perro', 'gato', 'piedra', 'alma', 'ruby', 'css', 'html']
puts 'Original order:', words
puts 'New order:', shuffle(words)

