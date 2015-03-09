module SayItWithGraphs
  module Characters
    class U
      include SayItWithGraphs::GraphControls

      def define
        'u'
      end

      def draw
        a = rnd_line
        frame do |f|
          f.line[a].at 100
          f.line[a].at 20
        end
        frame do |f|
          f.line[a].at 0
        end
        frame do |f|
          f.line[a].at 0
        end
        frame do |f|
          f.line[a].at 20
          f.line[a].at 100
        end
      end
    end
  end
end
