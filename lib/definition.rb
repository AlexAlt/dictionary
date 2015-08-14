class Definition 

  attr_reader(:part_of_speech, :language, :description)

  define_method(:initialize) do |attributes|
    @part_of_speech = attributes.fetch(:part_of_speech)
    @language = attributes.fetch(:language)
    @description = attributes.fetch(:description)
  end
end