module SayItWithGraphs
  module Characters
    class I
      include SayItWithGraphs::GraphControls

      def define
        'i'
      end

      def draw
        a = rnd_line
        frame do |f|
          f.line[a].at 0
          f.line[a].at 100
          f.line[a].at 0
        end
      end
    end
  end
end
