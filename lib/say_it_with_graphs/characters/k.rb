module SayItWithGraphs
  module Characters
    class K
      include SayItWithGraphs::GraphControls

      def define
        'k'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.line[a].at 0
          f.line[a].at 100
          f.line[b].at 50
        end
        frame do |f|
          f.line[b].at 60
          f.line[c].at 60
        end
        frame do |f|
          f.line[b].at 100
          f.line[c].at 0
        end
      end
    end
  end
end
