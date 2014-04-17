require 'minitest_helper'
require 'fantasyhub'

describe Fantasyhub do
  subject { Fantasyhub }
  describe "score_activity_feed(uid)" do
    it "must get all the events" do
      VCR.use_cassette("tenderlove_activity") do
        subject.score_activity_feed('tenderlove').count.must_equal 30
      end
    end
  end
end
