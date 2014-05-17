require 'minitest_helper'

describe Fantasyhub do
  subject { Fantasyhub }
  describe "event_scores_sum_for(uid)" do
    it "must get the sum of the event scores" do
      VCR.use_cassette("tenderlove_activity") do
        subject.('tenderlove').must_equal 148
      end
    end
  end
end
