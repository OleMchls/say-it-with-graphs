module SayItWithGraphs
  module Characters
    class Dash
      include SayItWithGraphs::GraphControls

      def define
        '-'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 45
          f.line[a].at 55
          f.line[b].at 45
        end
        frame {  }
        frame do |f|
          f.line[a].at 55
          f.line[b].at 45
          f.line[b].at 55
        end
      end
    end
  end
end
