module SayItWithGraphs
  module Characters
    class E
      include SayItWithGraphs::GraphControls

      def define
        'e'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.line[c].at 0

          f.line[a].at 0
          f.line[a].at 100

          f.line[b].at 0
          f.line[b].at 50
        end
        frame do |f|
          f.line[c].at 0
          f.line[a].at 100
          f.line[b].at 50
        end
        frame do |f|
          f.line[c].at 0
          f.line[a].at 100
          f.line[b].at 50
        end
      end
    end
  end
end
