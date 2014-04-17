class Event

  attr_reader :actor, :event_type, :repo_url, :score, :created_at

  def initialize(hash)
    @actor      =  hash.fetch(:actor)
    @event_type =  hash.fetch(:event_type)
    @repo_url   =  hash.fetch(:repo_url)
    @score      =  hash.fetch(:score)
    @created_at =  hash.fetch(:created_at)
  end
end
