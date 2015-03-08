module SayItWithGraphs
  class Framer

    def initialize()
      @characters = []
      @mapping = {}
    end

    def frames(sentence)
      @characters = sentence.split ''
      load_mapping!
      @characters.collect do |char|
        character = char.downcase
        validate! character
        klass_for(character:character).new.draw
      end
    end

    private

    def load_mapping!
      SayItWithGraphs::Characters.constants.each do |const|
        klass = eval("SayItWithGraphs::Characters::#{const}")
        @mapping[klass.new.define.downcase] = klass
      end
    end

    def validate!(character)
      fail 'Not supported character!' unless valid? character
    end

    def valid?(character)
      @mapping.has_key? character.downcase
    end

    def klass_for(character: char)
      @mapping[character]
    end
  end
end
