module SayItWithGraphs
  module Characters
    class V
      include SayItWithGraphs::GraphControls

      def define
        'v'
      end

      def draw
        a = rnd_line
        frame { |f| f.line[a].at 100 }
        frame { |f| f.line[a].at 0 }
        frame { |f| f.line[a].at 100 }
      end
    end
  end
end
