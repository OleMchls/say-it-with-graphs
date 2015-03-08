module SayItWithGraphs
  module GraphControls
    def initialize
      @frames = []
    end

    def frame
      frame = Frame.new
      yield frame
      @frames << frame
    end

    def rnd_line
      SecureRandom.hex[0..5]
    end
  end
end
