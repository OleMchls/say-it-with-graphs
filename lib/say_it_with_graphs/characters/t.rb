module SayItWithGraphs
  module Characters
    class T
      include SayItWithGraphs::GraphControls

      def define
        't'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 100
        end
        frame do |f|
          f.line[b].at 100
          f.line[b].at 0
        end
        frame do |f|
          f.line[a].at 100
        end
      end
    end
  end
end
