module Covid19
  class CLI
    def menu
      puts 'Welcome to the Covid19 CLI App'
      puts '______________________________'
      puts ''
      puts 'Here is a list of Continents'
      puts ''
      Covid19::API.fetch_continent_data

      continent_list
      prompt

     
      chosen_continent
      
    end

    def continents
      continents = Covid19::Continent.all.collect do |c|
        c.continent
      end
      #binding.pry
      
    end
    
    

    def continent_list 
      continents.each.with_index(1) do |c, i|
        puts "#{i}. #{c}"
      end
    end
    
    def chosen_continent
      continent = gets.strip.to_i
      
      puts "You have chosen #{continents[continent - 1]}"
      if continent.between?(1, continents.length)
        puts "#{continents[continent - 1]} has:"
        puts ''
         continent_data(continent)
       
      else
        puts 'Enter a number between 1 - 6'
      end

    end

    def continent_data(continent)
      cont = Covid19::Continent.find_by_continent(continents[continent - 1]) 
      cont.each do |c|
        puts "Total Cases #{c.cases}"
        puts "Total deaths #{c.deaths}"
      end
     # binding.pry
      #continents[continent -1]
      #binding.pry
    end

    def prompt
      puts ''
      puts 'Enter a number to choose a "Continent" or "exit" to Exit the app'
    end
  end
end
