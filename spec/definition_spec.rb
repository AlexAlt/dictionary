require('rspec')
require('definition')

describe(Definition) do

  before() do
    Definition.clear()
  end

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

  describe('#save') do
    it('saves the definition to an array') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :description => "of the color red")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('clears the definition array') do
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

   describe('#id') do
    it('returns the id of the definition') do
      test_definition = Definition.new(:part_of_speech => "adjective", :language => "English", :description => "of the color red")
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end
end