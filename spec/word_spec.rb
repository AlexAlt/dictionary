require('word')
require('rspec')

describe(Word) do 

  before() do
    Word.clear()
  end

  describe('#show') do
    it('returns the word') do
      test_word = Word.new('red')
      expect(test_word.show()).to(eq('red'))
   end
  end

  describe('.all') do
    it('initially returns an empty array') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word to the word array') do
      test_word = Word.new('red')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears the array') do
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  
end