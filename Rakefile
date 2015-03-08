require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require './lib/say_it_with_graphs.rb'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :'say-it-with-graphs' do
  desc "Draws 'something' onto a graph"
  task 'say', [:something] do |t, args|
    something = args[:something]
    p "making '#{something}' with <3 and graphs"
    SayItWithGraphs::Brush.new.paint! SayItWithGraphs::Framer.new.frames(something)
  end
end
