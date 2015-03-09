module SayItWithGraphs
  module Characters
    class F
      include SayItWithGraphs::GraphControls

      def define
        'f'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        frame do |f|
          f.line[a].at 0
          f.line[a].at 100
          f.line[b].at 50
          f.line[c].at 100
        end
        frame { }
        frame do |f|
          f.line[b].at 50
          f.line[c].at 100
        end
      end
    end
  end
end
