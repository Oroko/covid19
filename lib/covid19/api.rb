# frozen_string_literal: true

module Covid19
  class API
    def self.fetch_continent_data
      url = 'https://disease.sh/v3/covid-19/continents?yesterday=true'
      response = HTTParty.get(url)
      response.each do |item|
        unless  Covid19::Continent.nil?

        Covid19::Continent.new(item)

        # binding.pry
      end
   end
  end

  def self.fetch_country_data
    url = 'https://disease.sh/v3/covid-19/countries?yesterday=true'
    response = HTTParty.get(url)
    response.each do |item|
        unless  Covid19::Country.nil?

        Covid19::Country.new(item)

       # binding.pry
      end
   end
  end
end
end
