module SayItWithGraphs
  module Characters
    class X
      include SayItWithGraphs::GraphControls

      def define
        'x'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 100
          f.line[b].at 0
        end
        frame {  }
        frame {  }
        frame do |f|
          f.line[a].at 0
          f.line[b].at 100
        end
      end
    end
  end
end
