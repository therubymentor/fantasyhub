require 'open-uri'
require 'tempfile'

module GithubActivityDownloader
  extend self

  def download(uid)
    read_json(uid)
  end

private

  def read_json(uid)
    open(activity_feed_url(uid)).read
  end

  def activity_feed_url(uid)
    "https://github.com/#{uid}.json"
  end
end
