module SayItWithGraphs
  module Characters
    class B
      include SayItWithGraphs::GraphControls

      def define
        'b'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        d = rnd_line
        frame do |f|
          f.line[a].at 0
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
          f.line[a].at 83
          f.line[a].at 66
          f.line[b].at 66
          f.line[c].at 33
          f.line[c].at 16
          f.line[d].at 16
        end
      end
    end
  end
end
