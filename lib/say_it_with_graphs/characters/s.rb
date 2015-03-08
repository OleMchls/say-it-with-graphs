module SayItWithGraphs
  module Characters
    class S
      include SayItWithGraphs::GraphControls

      def define
        's'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.line[a].at 60
          f.line[a].at 80
          f.line[b].at 60
          f.line[c].at 0
        end
        frame do |f|
          f.line[a].at 100
          f.line[c].at 0
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 40
          f.line[b].at 20
          f.line[c].at 20
        end
      end
    end
  end
end
