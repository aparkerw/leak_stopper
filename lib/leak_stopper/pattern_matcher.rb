module LeakStopper
  class PatternMatcher

    def self.string_to_regex(string)
      Regexp.new string if is_valid_regex_string?(string)
    end

    def self.match_pattern_in_text(pattern, text)
      return pattern.match text if is_valid_pattern?(pattern) && is_valid_text?(text)
    end

    def self.initialize_patterns
      raw_pattern_hash = load_yaml || {}
      @@patterns = hash_to_patterns_array(raw_pattern_hash)
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

    def self.load_yaml
      YAML.load_file(LeakStopper.configuration.leak_stopper_yml) if LeakStopper.configuration.leak_stopper_yml
    end

    def self.hash_to_patterns_array(hash)
      patterns = []
      hash_patterns(hash).each do |a_pattern|
        patterns << LeakStopper::Pattern.new(a_pattern[1])
      end
      patterns
    end

    def self.hash_patterns(hash)
        (hash["patterns"] || {}) if !hash.nil?
    end

  end
end