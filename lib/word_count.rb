require('pry')

class String
  define_method(:word_count) do |word|
    total_count = 0
    word_array = self.split(" ")
    word_array.each do |split_words|
      if split_words.downcase() == word
        total_count += 1
      end
    end
    total_count
  end
end
