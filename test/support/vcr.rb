require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'test/fixtures/cassettes'
  c.ignore_hosts 'codeclimate.com'
  c.hook_into :webmock
end
WebMock.allow_net_connect!
