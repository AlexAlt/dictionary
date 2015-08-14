class Definition 

  @@all_definitions = []

  attr_reader(:part_of_speech, :language, :description)

  define_method(:initialize) do |attributes|
    @part_of_speech = attributes.fetch(:part_of_speech)
    @language = attributes.fetch(:language)
    @description = attributes.fetch(:description)
    @id = @@all_definitions.length().+(1)
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

  define_method(:save) do
    @@all_definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end

   define_method(:id) do
    @id
  end
end