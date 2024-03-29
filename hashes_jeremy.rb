# ## Challenges: Practice with Hashes
# - As a developer, I can create a hash called my_phone using the Ruby method `.new`.
# my_phone = Hash.new
my_phone = {}
p my_phone

# - As a developer, I can add five key:value pairs of app names and their descriptions to my hash.
my_phone[:"Google Maps"] = 'GPS navigation application'
my_phone[:Calculator] = 'A handy phone calculator'
my_phone[:Wordle] = 'An addictive word game'
my_phone[:"Candy Crush"] = 'A sugary treat of a game'
my_phone[:Chrome] = 'A dependable web browswer'

puts my_phone

# - As a developer, I can return a value from my_phone by passing in the name of a key.
p my_phone[:Wordle]

# - As a developer, I can update two keys in my_phone.
my_phone[:Wordlee] = my_phone.delete :Wordle
my_phone[:Maps] = my_phone.delete :"Google Maps"

p my_phone

# - As a developer, I can update two values in my_phone.
my_phone[:"Candy Crush"] = 'The levels never end!'
my_phone[:Chrome] = 'Invades your privacy..Thanks Google'

p my_phone

# - As a developer, I can delete two key:value pairs from my_phone.
my_phone.delete :Chrome
my_phone.delete :Maps

p my_phone

# - As a developer, I can use an enumerable method to return information about all of my_phone's applications.
my_phone.each do |key, value|
  p "The app #{key}'s description is: #{value}."
end

# ### Stretch Challenges
# - As a developer, I can create a custom method that takes in my_phone and returns an array with the app name capitalized and information about each phone app.

def convert_to_array(hash)
  output = []
  hash.each do |key, value|
    output << "#{key}: #{value}"
  end
  output
end

my_phone_array = convert_to_array(my_phone)
p my_phone_array
