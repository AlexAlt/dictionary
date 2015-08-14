require('word')
require('rspec')
# require('definition')

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

  describe('#id') do
    it('returns the id of the word') do
      test_word = Word.new('red')
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a specific word using its id') do
      test_word = Word.new('red')
      test_word.save()
      test_word2 = Word.new('green')
      test_word2.save()
      expect(Word.find(1)).to(eq(test_word))
    end
  end

  # describe('#definitions') do
  #   it('returns the list of definitions for that word') do
  #     expect
  #   end
  # end

end