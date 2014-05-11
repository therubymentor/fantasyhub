require 'json'

module Fantasyhub::Feed::Parser
  extend self

  def parse(feed)
    hash = parse_json(feed)
    transform_feed_keys(hash)
  end
  alias_method :call, :parse

private

  def transform_feed_keys(feed)
    feed.map {|item| {
      actor: item.fetch("actor"),
      repo_url: item.fetch("repository", {}).fetch("url", "private"),
      created_at: item.fetch("created_at"), event_type: item.fetch("type") } }
  end

  def parse_json(feed)
    JSON.parse(feed)
  end
end
