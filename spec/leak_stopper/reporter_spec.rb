require 'spec_helper'

module LeakStopper
  describe Reporter do
  
    describe "::log_report" do
      it "it should write to the log file" do
        Reporter.log_report "hello world"
        log_file_exists.should be_true
      end
    end

  end
end

def log_file_is_missing
  File.exists?('leak_stopper_test.log') == false
end

def log_file_exists
  File.exists?('leak_stopper_test.log') == true
end

    #def self.get_logger
    #  LeakStopper.configuration.logger
    #end