words = ['habia', 'gato', 'perro', 'gato', 'alma', 'coco', 'alma']

def sort_words words
  words_size = words.length
  sorted     = []

  while sorted.length != words_size
    minor = words[0]
    words.each do |word|
      if word < minor
        minor = word
      end
    end

    unsorted = []
    found    = false

    words.each do |word|
      if word == minor && (not found)
        found = true
      else
        unsorted.push(word)
      end
    end
    sorted.push(minor)
    words = unsorted
  end

  sorted
end

puts 'The sorted words are:'
puts sort_words(words)

