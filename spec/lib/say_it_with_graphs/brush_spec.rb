require 'spec_helper'
require 'say_it_with_graphs/brush'
require 'say_it_with_graphs/client'

RSpec.describe SayItWithGraphs::Brush do

  it { should respond_to :paint! }

  before :each do
    allow(subject).to receive(:sleep)
    allow(subject).to receive(:p)
    allow(subject).to receive(:rand).and_return(37)

    allow(subject).to receive(:countdown)
  end

  let(:line) { double('line', position: 5, line_number: 10) }
  let(:frame) { double('frame', complete: [line, line]) }
  let(:frames) { [frame, [frame, frame]] }

  describe '#paint!' do
    it 'should send the lines to the client' do
      expect(SayItWithGraphs::Client).to receive(:submit).with(value: 5, source: 'source-no-10', name: 'say-it-with-graphs-37').exactly(6).times
      subject.paint! frames
    end
  end
end
