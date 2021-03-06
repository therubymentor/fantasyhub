require 'fantasyhub/event'

module Fantasyhub::Feed::Scorer
  extend self

  def score(feed)
    feed.map do |item|
      with_score = merge_in_score(item)
      ::Fantasyhub::Event.new(with_score)
    end
  end
  alias_method :call, :score

private

  def merge_in_score(item)
    item.merge(score: score_by_type(item[:event_type]))
  end

  def score_by_type(event_type)
    namespace = "Fantasyhub::Events::#{event_type}"
    Object.const_get(namespace).score
  end

end
