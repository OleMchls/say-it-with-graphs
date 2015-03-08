require 'securerandom'

module SayItWithGraphs
  module Characters
    class R
      include SayItWithGraphs::GraphControls

      def define
        'r'
      end

      def draw
        a = rnd_line
        b = rnd_line
        c = rnd_line
        d = rnd_line
        frame do |f|
          f.line[a].at 0
          f.line[a].at 100

          f.line[b].at 0
          f.line[b].at 50

          f.line[c].at 0
          f.line[c].at 50
        end
        frame do |f|
          f.line[a].at 88
          f.line[b].at 65
          f.line[c].at 65
        end
        frame do |f|
          f.line[a].at 75
          f.line[b].at 75
          f.line[c].at 0
        end
      end
    end
  end
end
