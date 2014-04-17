require "fantasyhub/version"

module Fantasyhub
  extend self

  def score_activity_feed(uid)
    score(parsed(activity_feed(uid)))
  end
  alias_method :call, :score_activity_feed

private

  def activity_feed(uid)
    Feed::Downloader.(uid)
  end

  def parsed(feed)
    Feed::Parser.(feed)
  end

  def score(feed)
    Feed::Scorer.(feed)
  end
end

require "fantasyhub/feed"
require "fantasyhub/events"
