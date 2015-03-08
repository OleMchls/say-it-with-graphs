require 'spec_helper'
require 'say_it_with_graphs/client'

RSpec.describe SayItWithGraphs::Client do

  subject { SayItWithGraphs::Client }

  it { should respond_to :submit }

  describe '.submit' do

    let(:user) { 'some_user' }
    let(:token) { 'some_token' }

    let(:value) { 4 }
    let(:source) { 'some_source' }

    before :each do
      ENV['LIBRATO_USER'] = user
      ENV['LIBRATO_TOKEN'] = token
    end

    after :each do
      ENV.delete 'LIBRATO_USER'
      ENV.delete 'LIBRATO_TOKEN'
    end

    it 'should send metric to librato' do
      expected_metric = {
        gauges: [{
          name: 'say-it-with-graphs',
          value: value,
          source: source
        }]
      }
      expected_options = {
        basic_auth: { username: user, password: token },
        headers: {'Content-Type' => 'application/json'},
        body: expected_metric.to_json
      }
      allow(subject).to receive(:post).with '/v1/metrics', expected_options

      subject.submit value: value, source: source
    end
  end
end
