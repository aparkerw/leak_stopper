require 'yaml'
require 'date'
require 'Logger'

#gem includes
require "pattern_matcher"

require "leak_stopper/version"
require "leak_stopper/config"
require "leak_stopper/reporter"
require "leak_stopper/scanner"

module LeakStopper

  def self.configure
    yield configuration if block_given?

    configure_pattern_matcher if ! PatternMatcher.configured?
  end

  def self.configuration
    @configuration ||= LeakStopper::Config.new
  end

  def self.configure_pattern_matcher
    PatternMatcher.configure do |config|
      config.patterns_yml = @configuration.patterns_yml
    end
  end

end

