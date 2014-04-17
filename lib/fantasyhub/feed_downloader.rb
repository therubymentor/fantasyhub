require 'open-uri'

module FeedDownloader
  extend self

  def download(uid)
    feed_for(uid)
  end
  alias_method :call, :download

private

  def feed_for(uid)
    url = feed_url(uid)
    open(url).read
  end

  def feed_url(uid)
    "https://github.com/#{uid}.json"
  end
end
