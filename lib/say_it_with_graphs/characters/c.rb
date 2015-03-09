module SayItWithGraphs
  module Characters
    class C
      include SayItWithGraphs::GraphControls

      def define
        'c'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 33
          f.line[a].at 66
          f.line[b].at 33
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
        end
      end
    end
  end
end
