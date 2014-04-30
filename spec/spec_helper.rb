require 'rubygems'
require 'simplecov'
SimpleCov.start do 
end

require 'leak_stopper' # and any other gems you need

#require 'factory_girl'
#FactoryGirl.find_definitions

RSpec.configure do |config|

  config.before(:each) do

    delete_prior_test_logs

    LeakStopper.configure do |config|
      config.leak_stopper_yml = File.join(File.dirname(__FILE__), "config", "leak_stopper.yml")
      config.patterns_yml = File.join(File.dirname(__FILE__), "config", "patterns.yml")
      config.logger = Logger.new('leak_stopper_test.log')
    end

  end
end

def delete_prior_test_logs
  File.delete('leak_stopper_test.log')
end