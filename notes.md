Covid19 CLI Gem 

1. First set up the environment so that all files can talk to each other
-Create your run file, set the shebang line, make it executable and require your environment file
-Create your your environment file and thats where we require all the files in the lib folder and require all the gems to be used in your project
-edit the gemspec file and add all the dependencies/gems for your project and provide a url for your homepage

Stub out your project
- You need a service file that fetches data from the api. - API class
- You need a cli file that interacts with the user - CLI class
- You need a model class, Your keeper of all truths - where you set all your atrribute methods,
initialize method, collector of all instances of the class, and return or access the class array


Stub out your classes
Continent Class
Your continent class is responsible for for keeping a count of all the continent objects and saving it
helper methods
- find_by_name(name) - you can search for a continent object and use the find_by_name to find the specific object by name

CLI class
This is where you need to create the interface for the user.
The user is supposed to see a menu that prompts them for information and based on that input it should give them more data
The menu should be recursive in nature so that the user can always have an option of what to do.

API class
This is where we fetch the data from the API and make it available for our app to use. We should build a functionality that is able to save an object that is instatiated instead of going back to the API to refetch the same data the user asked for earlier.


