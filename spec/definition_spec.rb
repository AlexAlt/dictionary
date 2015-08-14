require('rspec')
require('definition')

describe(Definition) do
  describe('#part_of_speech') do
    it('returns the part of speech') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :description => "of the color red")
      expect(test_definition.part_of_speech()).to(eq("adjective"))
    end
  end

  describe('#language') do
    it('returns the language') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :description => "of the color red")
      expect(test_definition.language()).to(eq("English"))
    end
  end

  describe('#description') do
    it('returns the language') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :description => "of the color red")
      expect(test_definition.description()).to(eq("of the color red"))
    end
  end

  describe('.all') do
    it('initially returns an empty array') do
      expect(Definition.all()).to(eq([]))
    end
  end
end