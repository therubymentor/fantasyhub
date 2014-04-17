require 'minitest_helper'
require 'json'
require 'fantasyhub/feed_downloader'

describe FeedDownloader do
  describe "download(uid)" do
    subject { FeedDownloader.download("tenderlove") }
    it "must download the activity json for a user" do
      VCR.use_cassette("tenderlove_activity_feed") do
        JSON.parse(subject)[0]["actor"].must_equal "tenderlove"
      end
    end
  end
end
