require 'minitest_helper'
require 'fantasyhub/feed/scorer'

describe Fantasyhub::Feed::Scorer do
  subject { Fantasyhub::Feed::Scorer }

  describe "score(feed)" do
    it "must score a feed" do
      feed = [{ actor: "tenderlove", event_type: "PushEvent",
                repo_url: "repo-url", created_at: "some-date" },
              { actor: "tenderlove", event_type: "PushEvent",
                repo_url: "repo-url", created_at: "some-date" },]
      subject.score(feed).map {|event| event.score }.reduce(:+).must_equal 14
    end
4
    it "must return score a PushEvent" do
      feed = [{ actor: "tenderlove", event_type: "PushEvent",
                  repo_url: "repo-url", created_at: "some-date" },]
      new_feed = subject.score(feed)
      new_feed[0].score.must_equal 7
    end

    it "must return score a CommitCommentEvent" do
      feed = [{ actor: "tenderlove", event_type: "CommitCommentEvent",
                  repo_url: "repo-url", created_at: "some-date" },]
      new_feed = subject.score(feed)
      new_feed[0].score.must_equal 2
    end

    it "must return score a IssueCommentEvent" do
      feed = [{ actor: "tenderlove", event_type: "IssueCommentEvent",
                  repo_url: "repo-url", created_at: "some-date" },]
      new_feed = subject.score(feed)
      new_feed[0].score.must_equal 2
    end

    it "must return score a IssuesEventEvent" do
      feed = [{ actor: "tenderlove", event_type: "IssuesEvent",
                  repo_url: "repo-url", created_at: "some-date" },]
      new_feed = subject.score(feed)
      new_feed[0].score.must_equal 3
    end

    it "must return score a WatchEvent" do
      feed = [{ actor: "tenderlove", event_type: "WatchEvent",
                  repo_url: "repo-url", created_at: "some-date" },]
      new_feed = subject.score(feed)
      new_feed[0].score.must_equal 1
    end

    it "must return score a PullRequestEvent" do
      feed = [{ actor: "tenderlove", event_type: "PullRequestEvent",
                  repo_url: "repo-url", created_at: "some-date" },]
      new_feed = subject.score(feed)
      new_feed[0].score.must_equal 5
    end

    it "must return score a FollowEvent" do
      feed = [{ actor: "tenderlove", event_type: "FollowEvent",
                  repo_url: "repo-url", created_at: "some-date" },]
      new_feed = subject.score(feed)
      new_feed[0].score.must_equal 1
    end
  end
end
