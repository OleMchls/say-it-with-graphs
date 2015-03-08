module SayItWithGraphs
  module Characters
    class G
      include SayItWithGraphs::GraphControls

      def define
        'g'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.line[a].at 33
          f.line[a].at 66
          f.line[b].at 33
        end
        frame do |f|
          f.line[a].at 100
          f.line[c].at 50
          f.line[b].at 0
        end
        frame do |f|
          f.line[c].at 50
          f.line[c].at 0
          f.line[a].at 100
          f.line[b].at 0
        end
      end
    end
  end
end
