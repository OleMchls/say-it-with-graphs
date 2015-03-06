require 'spec_helper'
require 'say_it_with_graphs/line'

RSpec.describe SayItWithGraphs::Line do

  it { should respond_to :position }
  it { should respond_to :line_number }
  it { should respond_to :at }
  it { should respond_to :[] }

  describe '#initialize' do
    it 'should default position to 0' do
      expect(subject.position).to be 0
    end
    it 'should default line_number to 1' do
      expect(subject.line_number).to be 1
    end
  end

  describe '#[]' do
    it 'should set the line number' do
      expect(subject[2].line_number).to be 2
    end
    it 'should return itself' do
      expect(subject[2]).to be subject
    end
  end

end
