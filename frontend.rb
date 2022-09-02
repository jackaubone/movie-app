require "http"

movie_response = HTTP.get("http://localhost:3000/movies")

movie_data = movie_response.parse(:json)

puts movie_data