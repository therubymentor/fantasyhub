require 'minitest_helper'
require 'fantasyhub/feed/parser'

describe Fantasyhub::Feed::Parser do
  subject { Fantasyhub::Feed::Parser }
  describe "parse(feed)" do
    let(:fixture) { File.expand_path("../../../fixtures/tenderlove.json", __FILE__) }
    let(:feed)    { File.read(fixture) }

    it "must return a collectiopn of Events" do
      parsed = subject.parse(feed)
      parsed.count.must_equal 30
    end

    it "must return the actor key" do
      parsed = subject.parse(feed)
      parsed[0][:actor].must_equal "tenderlove"
    end

    it "must return the repo url" do
      parsed = subject.parse(feed)
      parsed[0][:repo_url].must_equal "https://github.com/tenderlove/av_capture"
    end

    it "must return the created_at" do
      parsed = subject.parse(feed)
      parsed[0][:created_at].must_equal "2014-04-16T16:21:31-07:00"
    end

    it "must return the event_type" do
      parsed = subject.parse(feed)
      parsed[0][:event_type].must_equal "IssueCommentEvent"
    end
  end
end
