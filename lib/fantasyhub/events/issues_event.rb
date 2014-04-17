module IssuesEvent
  extend self

  def score
    3
  end
  alias_method :call, :score

end
