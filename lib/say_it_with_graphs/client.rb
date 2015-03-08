require 'httparty'

module SayItWithGraphs
  class Client
    include HTTParty
    base_uri 'https://metrics-api.librato.com'

    # debug_output $stdout

    def self.submit value: value, source: source, name: 'say-it-with-graphs'
      auth = { username: ENV['LIBRATO_USER'], password: ENV['LIBRATO_TOKEN'] }
      metric = {
        gauges: [{
          name: name,
          value: value,
          source: source
        }]
      }
      self.post('/v1/metrics', basic_auth: auth, headers: {'Content-Type' => 'application/json'}, body: metric.to_json)
    end
  end
end
