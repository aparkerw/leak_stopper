require 'spec_helper'

module LeakStopper
  describe Pattern do
  
    describe "::initialize" do
      it "should work given a valid hash" do
        a_pattern = Pattern.new(sample_yaml_pattern)
        a_pattern.name.should == sample_yaml_pattern["name"]
        a_pattern.regex.should == sample_yaml_pattern["regex"]
        a_pattern.description.should == sample_yaml_pattern["description"]
        a_pattern.is_valid?.should be_true
      end

      it "should behave correctly given {}" do
        a_pattern = Pattern.new({})
        a_pattern.is_valid?.should be_false
      end

      it "should behave correctly given ''" do
        a_pattern = Pattern.new('')
        a_pattern.is_valid?.should be_false
      end

      it "should behave correctly given nil" do
        a_pattern = Pattern.new(nil)
        a_pattern.is_valid?.should be_false
      end
    end

  end
end