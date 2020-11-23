module Covid19
  class CLI
    def start
      puts 'Welcome to the Covid19 CLI App'
      puts '______________________________'
      puts ''
      puts 'Here is a list of Continents'
      puts ''
      Covid19::API.fetch_continent_data 

     
      menu
      
    end

    def menu
      continent_list
      prompt
      chosen_continent
      continue
      

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
      
     
      if continent.between?(1, continents.length)
        puts "You have chosen #{continents[continent - 1]}"
        puts "Here is the Covid data for #{continents[continent - 1]}:"
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
        puts "Total recovered #{c.recovered}"
        puts ''
        puts ''
        puts "Total Countries : "
        puts ''
        countries(continent)

        puts 'Would you like to Pick a country? Enter a number to get Covid data '
        country = gets.strip.to_i
        puts ''
        
      end
      #binding.pry
      #continents[continent -1]
      #binding.pry
      puts 'Would you like to continue y/n'
      @input = gets.strip.downcase
    end

    def countries(continent)
      
      cont = Covid19::Continent.find_by_continent(continents[continent - 1]).collect do |c|
        puts c.countries
      end
      

    end

    def continue
      if @input == 'y'
        menu 
      elsif @input != 'n' && @input != 'exit'
        puts 'Please enter n for No or exit to Exit'
        menu
      else 
        puts "Thank you and stay safe"
        
      end
      
    end

    def prompt
      puts ''
      puts 'Enter a number to choose a "Continent" '
      puts ''
     
    end 

    
  end
end
