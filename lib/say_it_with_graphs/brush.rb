module SayItWithGraphs
  class Brush
    def paint!(frames)
      frames.flatten!
      target = "say-it-with-graphs-#{rand(100)}"
      p "Painting to #{target} ... ETA: #{frames.length} minutes"
      p "=> https://metrics.librato.com/metrics/#{target}"
      frames.each_with_index do |frame, i|
        p "Frame #{i} of #{frames.length}" if debug?
        frame.complete.each do |line|
          p "Line[#{line.line_number}] pos: #{line.position}" if debug?
          Client.submit value: line.position, source: "source-no-#{line.line_number}", name: target
          sleep 0.5
          # Thread.new { Client.submit value: line.position, source: "source-no-#{line.line_number}" }
        end
        countdown 60
      end
    end

    def countdown(sec)
      sec.times do |i|
         print "\r#{i} / #{sec}"
         sleep 1
       end
       print "\r"
    end

    private

    def debug?
      true
    end
  end
end
