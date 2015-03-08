require 'spec_helper'
require 'say_it_with_graphs/framer'
require 'say_it_with_graphs/graph_controls'
require 'say_it_with_graphs/characters/i'

RSpec.describe SayItWithGraphs::Framer do

  it { should respond_to :frames }

  let(:valid_phrase) { 'Hi' }
  let(:invalid_phrase) { 'fününü' }

  let(:character) { double(:draw) }

  describe '#frames' do

    before :each do
      allow(SayItWithGraphs::Characters).to receive :constants
      allow(character).to receive :draw
      allow(subject).to receive :load_mapping!
      allow(subject).to receive :validate!
      allow(subject).to receive :valid?
      allow(subject).to receive(:klass_for).and_return(double('character', new: character))
    end

    it 'should load the character to class mapping' do
      expect(subject).to receive(:load_mapping!)
      subject.frames valid_phrase
    end

    it 'should validate the characters' do
      expect(subject).to receive(:validate!)
      subject.frames invalid_phrase
    end

    it 'should return the frames for all characters' do
      frame = double 'frame'
      expect(character).to receive(:draw).and_return(frame)
      expect(subject).to receive(:klass_for).and_return(double(new: character))
      expect(subject.frames('i')).to eq [frame]
    end
  end

end
