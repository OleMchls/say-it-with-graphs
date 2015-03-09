module SayItWithGraphs
  module Characters
    class Y
      include SayItWithGraphs::GraphControls

      def define
        'y'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 100
        end
        frame do |f|
          f.line[a].at 70
          f.line[b].at 70
          f.line[b].at 0
        end
        frame do |f|
          f.line[a].at 100
        end
      end
    end
  end
end
