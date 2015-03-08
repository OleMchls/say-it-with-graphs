module SayItWithGraphs
  module Characters
    class M
      include SayItWithGraphs::GraphControls

      def define
        'm'
      end

      def draw
        a = rnd_line
        frame do |f|
          f.line[a].at 0
        end
        frame do |f|
          f.line[a].at 100
        end
        frame do |f|
          f.line[a].at 0
        end
        frame do |f|
          f.line[a].at 100
        end
        frame do |f|
          f.line[a].at 0
        end
      end
    end
  end
end
