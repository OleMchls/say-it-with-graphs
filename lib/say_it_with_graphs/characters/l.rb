module SayItWithGraphs
  module Characters
    class L
      include SayItWithGraphs::GraphControls

      def define
        'l'
      end

      def draw
        a = rnd_line
        frame do |f|
          f.line[a].at 100
          f.line[a].at 0
        end
        frame do |f|
          f.line[a].at 0
        end
        frame do |f|
          f.line[a].at 0
        end
      end
    end
  end
end
