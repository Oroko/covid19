# frozen_string_literal: true

module Covid19
  class Continent
    @@all = []

    # attr_accessor :continent, :cases, :deaths

    def initialize(attr_hash)
      attr_hash.each do |key, value|
        self.class.attr_accessor(key)
        send("#{key}=", value) if respond_to?("#{key}=")
      end
      @@all << self
    end

    def self.all
      @@all
      # binding.pry
    end

    def self.find_by_continent(continent)
      all.select { |c| c.continent = continent }
    end
  end
end
