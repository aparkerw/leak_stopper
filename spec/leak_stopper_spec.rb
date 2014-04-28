require 'spec_helper'

module LeakStopper
  describe "aaaa" do
    it "should throw an ENOENT error when loading missing yaml (file missing)" do
      expect { 
        LeakStopper.configure do |config|
          config.leak_stopper_yml = File.join(File.dirname(__FILE__), "config", "missing_file.yml")
        end 
      }.to raise_error
    end
  end

end