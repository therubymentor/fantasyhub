require 'json'
require "thincloud/test"
require 'fantasyhub'

describe "End to end live test against github" do
  subject { Fantasyhub::Feed::Downloader.download("tenderlove") }

  it "should return the correct actor to verify api connection" do
    VCR.turned_off do
      JSON.parse(subject)[0]["actor"].must_equal "tenderlove"
    end
  end
end
