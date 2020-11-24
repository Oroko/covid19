# frozen_string_literal: true

module Covid19
  class Country
    @@all = []

    def initialize(attr_hash)
      attr_hash.each do |key, value|
        self.class.attr_accessor(key)
        send("#{key}=", value) if respond_to?("#{key}=")
      end
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_by_country(country)
      all.find { |c| c.country == country }
    end
  end
end
