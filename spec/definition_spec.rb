require('rspec')
require('definition')

describe(Definition) do
  describe('#part_of_speech') do
    it('returns the part of speech') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :description => "of a color red")
      expect(test_definition.part_of_speech()).to(eq("adjective"))
    end
  end

   describe('#language') do
    it('returns the language') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :description => "of a color red")
      expect(test_definition.language()).to(eq("English"))
    end
  end
end