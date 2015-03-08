module SayItWithGraphs
  module Characters
    class Three
      include SayItWithGraphs::GraphControls

      def define
        '3'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        d = rnd_line
        frame do |f|
          f.line[a].at 100
          f.line[b].at 50
          f.line[d].at 0
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 50
          f.line[c].at 50
          f.line[d].at 0
        end
        frame do |f|
          f.line[a].at 84
          f.line[a].at 67
          f.line[b].at 67
          f.line[c].at 34
          f.line[c].at 17
          f.line[d].at 17
        end
      end
    end
  end
end
