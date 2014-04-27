module LeakStopper
  class Config

    attr_accessor :leak_stopper_yml

    def initialize
      set_defaults
    end

    private

    def set_defaults
      @mongoid_yml = File.join(File.dirname(__FILE__), "config", "leak_stopper.yml")
    end

  end
end