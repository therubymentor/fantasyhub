Gem.find_files("fantasyhub/events/*_event.rb").each { |path| require path }
require 'fantasyhub/event'
require 'fantasyhub/feed'

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
    Object.const_get(event_type).score
  end

end
