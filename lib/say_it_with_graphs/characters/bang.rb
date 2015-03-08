module SayItWithGraphs
  module Characters
    class Bang
      include SayItWithGraphs::GraphControls

      def define
        '!'
      end

      def draw
        up_a = rnd_line
        up_b = rnd_line

        down_a = rnd_line
        down_b = rnd_line

        frame do |f|
          f.line[up_a].at 100
          f.line[up_b].at 100

          f.line[down_a].at 0
          f.line[down_b].at 0
        end
        frame do |f|
          f.line[up_a].at 100
          f.line[up_b].at 25

          f.line[down_a].at 0
          f.line[down_b].at 15
        end
        frame do |f|
          f.line[up_a].at 100
          f.line[up_b].at 100

          f.line[down_a].at 0
          f.line[down_b].at 0
        end
      end
    end
  end
end
