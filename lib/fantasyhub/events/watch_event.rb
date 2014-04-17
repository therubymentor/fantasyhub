module WatchEvent
  extend self

  def score
    1
  end
  alias_method :call, :score

end
