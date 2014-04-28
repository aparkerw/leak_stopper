require 'yaml'
require 'date'

#gem includes

require "leak_stopper/version"
require "leak_stopper/config"
require "leak_stopper/pattern"
require "leak_stopper/pattern_matcher"

module LeakStopper

  def self.configure
    yield configuration if block_given?
    @patterns = PatternMatcher.initialize_patterns
  end

  def self.configuration
    @configuration ||= LeakStopper::Config.new
  end

end

