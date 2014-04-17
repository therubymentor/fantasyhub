require 'fantasyhub'

module Fantasyhub::Events;end

Gem.find_files("fantasyhub/events/*_event.rb").each { |path| require path }
