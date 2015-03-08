module SayItWithGraphs
  module Characters
    class H
      include SayItWithGraphs::GraphControls

      def define
        'h'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.lines[a].at 0
          f.lines[b].at 0
          f.lines[a].at 100
          f.lines[b].at 50
          f.lines[a].at 0
        end
        frame do |f|
          f.lines[b].at 50
        end
        frame do |f|
          f.lines[c].at 0
          f.lines[b].at 50
          f.lines[c].at 100
          f.lines[b].at 0
          f.lines[c].at 0
        end
      end
    end
  end
end
