require('rspec')
require('definition')

describe(Definition) do
  describe('#part_of_speech') do
    it('returns the part of speech of the definition') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :definition => "of a color red")
      expect(test_definition.part_of_speech()).to(eq("adjective"))
    end
  end
end