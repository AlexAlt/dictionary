class Word

  @@all_words = []
  @@definitions = []

  define_method(:initialize) do |word|
    @word = word
    @id = @@all_words.length().+(1)
  end

  define_method(:show) do
    @word
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@all_words.each() do |word|
      if word.id().eql?(id.to_i())
        found_word = word
      end
    end
    found_word
  end

  define_method(:definitions) do
    @@definitions
  end
end