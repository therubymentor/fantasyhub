require 'json'
require "thincloud/test"
require 'fantasyhub'

describe "End to end live test against github" do
  subject { Fantasyhub.event_scores_sum_for("fantasyhubber") }

  it "should return the correct actor to verify api connection" do
    VCR.turned_off do
      subject.must_equal 1
    end
  end
end
