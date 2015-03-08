module SayItWithGraphs
  module Characters
    class O
      include SayItWithGraphs::GraphControls

      def define
        'o'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 33
          f.line[a].at 66
          f.line[b].at 33
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
        end
        frame do |f|
          f.line[a].at 66
          f.line[a].at 33
          f.line[b].at 33
        end
      end
    end
  end
end
