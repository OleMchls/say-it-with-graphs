require 'spec_helper'
require 'say_it_with_graphs/frame'
require 'say_it_with_graphs/line'

RSpec.describe SayItWithGraphs::Frame do

  it { should respond_to :line }
  it { should respond_to :lines }

  describe '#line' do
    it 'should add the line to the frame' do
      line = subject.line
      expect(subject.complete).to include line
    end
    it 'should return a line' do
      expect(subject.line).to be_a SayItWithGraphs::Line
    end
    it 'should return a line with default parameters' do
      line = subject.line
      expect(line.position).to be 0
      expect(line.line_number).to be 0
    end
  end

  describe '#complete' do
    it 'should return all lines in frame' do
      3.times { subject.line }
      expect(subject.complete.length).to be 3
    end
    it 'should freeze the frame' do
      subject.complete
      expect{subject.line}.to raise_error RuntimeError
    end
  end

end
