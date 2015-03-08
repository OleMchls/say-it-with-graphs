module SayItWithGraphs
  module Characters
    class Space
      include SayItWithGraphs::GraphControls

      def define
        ' '
      end

      def draw
        frame do |f|
          # nothing becaise its just a space
        end
      end
    end
  end
end
