module LeakStopper
  class Pattern

    attr_accessor :name, :regex, :description

    def initialize(hash)
      if !hash.nil?
        @name = hash["name"]
        @regex = hash["regex"]
        @description = hash["description"]
      end
    end

    def is_valid?
        return !(@regex.nil? || @regex.empty?)
    end
  end
end