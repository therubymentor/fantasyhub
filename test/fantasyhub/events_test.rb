require 'minitest_helper'
require 'fantasyhub/events'

describe Fantasyhub::Events do
  describe "Every event declaration must implement the interface methods" do
    Fantasyhub::Events.constants.each do |event|
      let(:event_klass) { Object.const_get("Fantasyhub::Events::#{event}") }
      it "must have a score" do
        event_klass.must_respond_to :score
      end
    end
  end
end
