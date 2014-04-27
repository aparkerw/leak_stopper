module LeakStopper
  class PatternMatcher

    def self.string_to_regex(string)
      Regexp.new string if is_valid_regex_string?(string)
    end

    def self.match_pattern_in_text(pattern, text)
      return pattern.match text if is_valid_pattern?(pattern) && is_valid_text?(text)
    end

    private

    def self.is_valid_regex_string?(string)
      !string.nil? && !string.empty? 
    end

    def self.is_valid_pattern?(pattern)
      !pattern.nil?
    end

    def self.is_valid_text?(text)
      !text.nil? && !text.empty? 
    end

  end
end