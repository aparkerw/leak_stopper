module LeakStopper
  class Config

    attr_accessor :leak_stopper_yml, :patterns_yml, :supress_logging, :logger

    def initialize
      set_defaults
    end

    private

    def set_defaults
      @supress_logging = false
      @leak_stopper_yml = File.join(File.dirname(__FILE__), "config", "leak_stopper.yml")
      @patterns_yml = File.join(File.dirname(__FILE__), "config", "patterns.yml")
      @logger = Logger.new('leak_stopper.log')
    end

  end
end