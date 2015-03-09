module SayItWithGraphs
  module Characters
    class N
      include SayItWithGraphs::GraphControls

      def define
        'n'
      end

      def draw
        a = rnd_line
        frame do |f|
          f.line[a].at 0
          f.line[a].at 100
        end
        frame { }
        frame do |f|
          f.line[a].at 0
          f.line[a].at 100
        end
      end
    end
  end
end
