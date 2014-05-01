module LeakStopper
  class Reporter

    def self.log_report(message)
      get_current_logger.info message
    end

    def self.get_current_logger
      LeakStopper.configuration.logger
    end
  end
end