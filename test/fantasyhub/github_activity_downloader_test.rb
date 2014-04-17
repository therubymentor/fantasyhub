require 'minitest_helper'
require 'json'
require 'fantasyhub/github_activity_downloader'

describe GithubActivityDownloader do
  subject { GithubActivityDownloader }
  describe "download(uid)" do
    it "must download the activity json for a user" do
      feed = subject.download("tenderlove")
      JSON.parse(feed)[0]["actor"].must_equal "tenderlove"
    end
  end
end
