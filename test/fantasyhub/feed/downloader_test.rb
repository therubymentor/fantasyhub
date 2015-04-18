require 'minitest_helper'
require 'json'
require 'fantasyhub/feed/downloader'

describe Fantasyhub::Feed::Downloader do
  describe "download(uid)" do
    subject { Fantasyhub::Feed::Downloader.download("tenderlove") }
    it "must download the activity json for a user" do
      VCR.use_cassette("tenderlove_activity_feed") do
        assert JSON.parse(subject)[0].has_key?("actor"), "The reponse in invalid"
      end
    end
  end
end
