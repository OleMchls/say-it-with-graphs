require "say_it_with_graphs/version"
require "say_it_with_graphs/line"
require "say_it_with_graphs/frame"
require "say_it_with_graphs/graph_controls"
require "say_it_with_graphs/framer"
require "say_it_with_graphs/brush"
require "say_it_with_graphs/client"

Dir[File.join(__dir__, 'say_it_with_graphs', 'characters', '*.rb')].each {|file| require file}

module SayItWithGraphs
end
