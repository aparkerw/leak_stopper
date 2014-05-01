module LeakStopper
  class Scanner

    def self.scan_text(text)
      PatternMatcher.match_patterns_to_text text
    end

  end
end