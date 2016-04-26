def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array == []
    sorted_array
  else
    new_unsorted = []
    repeated     = false
    sorted_array.push(unsorted_array[0])

    unsorted_array.each do |word|
      if word < sorted_array.last
        new_unsorted.push(sorted_array.pop)
        sorted_array.push(word)
      elsif word == sorted_array.last && (not repeated)
        repeated = true
      else
        new_unsorted.push(word)
      end
    end

    recursive_sort new_unsorted, sorted_array
  end
end

words = ['loco', 'perro', 'gato', 'alma', 'loco', 'zorro', 'sabueso',
         'victima', 'alma', 'nuestro']

puts 'The sorted words are:'
puts sort(words)

