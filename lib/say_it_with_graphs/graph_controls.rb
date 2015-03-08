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
  end
end
