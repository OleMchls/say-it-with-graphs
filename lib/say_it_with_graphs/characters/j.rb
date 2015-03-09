module SayItWithGraphs
  module Characters
    class J
      include SayItWithGraphs::GraphControls

      def define
        'j'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 100
          f.line[b].at 20
        end
        frame do |f|
          f.line[b].at 0
        end
        frame do |f|
          f.line[b].at 0
        end
        frame do |f|
          f.line[b].at 20
          f.line[a].at 100
          f.line[a].at 20
        end
      end
    end
  end
end
