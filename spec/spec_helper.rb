require 'rubygems'
require 'simplecov'
SimpleCov.start do 
end

require 'leak_stopper' # and any other gems you need

#require 'factory_girl'
#FactoryGirl.find_definitions

RSpec.configure do |config|
  config.before(:each) do
    
    LeakStopper.configure do |config|
      config.leak_stopper_yml = "leak_stopper.yml"
    end

  end
end

def random_word(length = 6)
  (0...length-1).map{ ('a'..'z').to_a[rand(26)] }.join
end

def random_number_string(length = 10)
  (0...length).map{ ('0'..'9').to_a[rand(10)] }.join
end