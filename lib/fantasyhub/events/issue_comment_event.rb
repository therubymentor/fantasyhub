module IssueCommentEvent
  extend self

  def score
    2
  end
  alias_method :call, :score

end
