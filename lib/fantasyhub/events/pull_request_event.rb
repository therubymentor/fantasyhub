module PullRequestEvent
  extend self

  def score
    5
  end
  alias_method :call, :score

end
