module SayItWithGraphs
  module Characters
    class Z
      include SayItWithGraphs::GraphControls

      def define
        'z'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
          f.line[c].at 0
        end
        frame {  }
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
          f.line[c].at 100
        end
      end
    end
  end
end
