module Covid19
  class CLI
    def menu
      puts 'Welcome to the Covid19 CLI App'
      puts '______________________________'
      puts ''
      puts 'Here is a list of Continents enter a number to choose a "Continent", or "exit" to Exit the app'
      puts ''
      Covid19::API.fetch_continent_data

      continent_list
    end

    def continent_list
      continents = Covid19::Continent.all
      continents.each.with_index(1) do |c, i|
        puts "#{i}. #{c.continent}"
      end
      #binding.pry
      
    end
  end
end
