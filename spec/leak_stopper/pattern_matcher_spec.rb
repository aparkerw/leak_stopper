require 'spec_helper'

module LeakStopper
  describe PatternMatcher do
  
    describe "::string_to_regex" do
      it "should return nil when given nil" do
        PatternMatcher.string_to_regex(nil).should be_nil
      end

      it "should return nil when given ''" do
        PatternMatcher.string_to_regex('').should be_nil
      end

      it "should return a functional regex when given a valid string" do
        returned_regex = PatternMatcher.string_to_regex('^[0-9]$')
        returned_regex.should eql(/^[0-9]$/)
        returned_regex.match('6').should be_true
      end
    end

    describe "::match_pattern_in_text" do
      it "should return nil when given nil pattern and nil text" do
        PatternMatcher.match_pattern_in_text(nil, nil).should be_false
      end

      it "should return nil when given nil pattern and valid text" do
        PatternMatcher.match_pattern_in_text(nil, "hello world").should be_false
      end

      it "should return nil when given valid pattern and nil text" do
        PatternMatcher.match_pattern_in_text(/hello/, nil).should be_false
      end

      it "should match when pattern is in text" do
        PatternMatcher.match_pattern_in_text(/hello/, "hello world").should be_true
      end

      it "should not match when pattern is not in text" do
        PatternMatcher.match_pattern_in_text(/hello/, "goodbye world").should be_false
      end
    end

    describe "::initialize_patterns" do
      it "should return {} if config is incorrectly initialized (no pattern yaml set)" do
        LeakStopper.configure do |config|
          config.leak_stopper_yml = nil
        end
        PatternMatcher.initialize_patterns.should == []
      end
      it "should return an array of pattern objects" do
        PatternMatcher.initialize_patterns.should_not == {}
      end
    end

  end
end