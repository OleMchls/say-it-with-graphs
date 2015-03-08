module SayItWithGraphs
  module Characters
    class P
      include SayItWithGraphs::GraphControls

      def define
        'p'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.line[a].at 0
          f.line[a].at 100
          f.line[b].at 100
          f.line[c].at 50
        end
        frame do |f|
          f.line[b].at 100
          f.line[c].at 50
        end
        frame do |f|
          f.line[b].at 84
          f.line[c].at 67
          f.line[b].at 67
        end
      end
    end
  end
end
