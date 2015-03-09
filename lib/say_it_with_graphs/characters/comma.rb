module SayItWithGraphs
  module Characters
    class Comma
      include SayItWithGraphs::GraphControls

      def define
        ','
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at -10
          f.line[a].at 0
          f.line[b].at -10
        end
        frame do |f|
          f.line[a].at 0
          f.line[b].at 0
        end
      end
    end
  end
end
