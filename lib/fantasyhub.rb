require "fantasyhub/version"
require "fantasyhub/feed_downloader"
require "fantasyhub/feed_parser"
require "fantasyhub/feed_scorer"

module Fantasyhub
  extend self

  def score_activity_feed(uid)
    score(parsed(activity_feed(uid)))
  end
  alias_method :call, :score_activity_feed

private

  def activity_feed(uid)
    FeedDownloader.(uid)
  end

  def parsed(feed)
    FeedParser.(feed)
  end

  def score(feed)
    FeedScorer.(feed)
  end
end
