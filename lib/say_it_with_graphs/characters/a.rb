module SayItWithGraphs
  module Characters
    class A
      include SayItWithGraphs::GraphControls

      def define
        'a'
      end

      def draw
        a = rnd_line
        b = rnd_line
        frame do |f|
          f.line[a].at 0
          f.line[b].at 50
          f.line[a].at 100
        end
        frame do |f|
          f.line[a].at 100
          f.line[b].at 50
          f.line[a].at 0
        end
      end
    end
  end
end
