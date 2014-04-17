require 'json'
require 'fantasyhub/feed'

module Fantasyhub::Feed::Parser
  extend self

  def parse(feed)
    hash = parse_json(feed)
    transform_feed_keys(hash)
  end
  alias_method :call, :parse

private

  def transform_feed_keys(feed)
    feed.map {|item| { actor: item["actor"], repo_url: item["repository"]["url"],
                       created_at: item["created_at"], event_type: item["type"] } }
  end

  def parse_json(feed)
    JSON.parse(feed)
  end
end
