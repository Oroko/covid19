# frozen_string_literal: true

module Covid19
  class API
    def self.fetch_continent_data
      url = 'https://disease.sh/v3/covid-19/continents?yesterday=true'
      response = HTTParty.get(url)
      response.each do |item|
        unless item['continent'].nil?
          Covid19::Continent.new(item)
          
        end
        #binding.pry
      end
    end
  end
end
