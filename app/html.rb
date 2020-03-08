require "http"

resposnse = HTTP.get("http://localhost:3000/api/contacts")

pp response.parse

# require "http"
# while true
#   print "Pick a word: "
#   user_input = gets.chomp
#   if user_input == "q"
#     break
#   end
#   response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=8c5e16a77ad41ee83c00a04a8760c80ce83ae19ce509db930")
#   definition = response.parse[0]["text"]
#   p definition
#   response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=8c5e16a77ad41ee83c00a04a8760c80ce83ae19ce509db930")
#   pronounciation = response.parse[0]["raw"]
#   p pronounciation
#   response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=8c5e16a77ad41ee83c00a04a8760c80ce83ae19ce509db930")
#   top_example = response.parse
#   p top_example
# end