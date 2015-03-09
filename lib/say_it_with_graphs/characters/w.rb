module SayItWithGraphs
  module Characters
    class W
      include SayItWithGraphs::GraphControls

      def define
        'w'
      end

      def draw
        a = rnd_line
        frame { |f| f.line[a].at 100 }
        frame { |f| f.line[a].at 0 }
        frame { |f| f.line[a].at 40 }
        frame { |f| f.line[a].at 0 }
        frame { |f| f.line[a].at 100 }
      end
    end
  end
end
