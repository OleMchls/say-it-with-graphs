module SayItWithGraphs
  class Line
    attr_accessor :position
    attr_reader :line_number

    alias_method :at, :position=

    def initialize(position = 0, line_number = 1)
      @position = position
      @line_number = line_number
    end

    def [](key)
      @line_number = key
      self
    end
  end
end
