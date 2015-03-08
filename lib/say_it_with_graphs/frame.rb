module SayItWithGraphs
  class Frame
    def initialize
      @lines = []
    end

    def line
      line = Line.new 0, 0
      @lines << line
      line
    end
    alias_method :lines, :line

    def complete
      @lines.freeze
    end
  end
end
