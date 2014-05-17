require "fantasyhub/version"

module Fantasyhub
  extend self

  def event_scores_sum_for(uid)
    sum_event_scores(uid)
  end
  alias_method :call, :event_scores_sum_for

private

  def sum_event_scores(uid)
    scores = score_activity_feed(uid)
    scores.map {|event| event.score }.reduce(:+)
  end

  def score_activity_feed(uid)
    score(parsed(activity_feed(uid)))
  end

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
