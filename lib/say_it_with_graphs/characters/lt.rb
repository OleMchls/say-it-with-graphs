module SayItWithGraphs
  module Characters
    class Lt
      include SayItWithGraphs::GraphControls

      def define
        '<'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 50
          f.line[b].at 50
        end
        frame do |f|
          f.line[a].at 75
          f.line[b].at 25
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
        end
      end
    end
  end
end
