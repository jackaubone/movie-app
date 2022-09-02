require "http"
quit = false
p "hi"


while !quit

  puts "[m] for Movies, [a] for Actors"
  user_input = gets.chomp

  if user_input == "m" || user_input == "a"
    quit = true
  else
    p "Invalid"
  end
end


if user_input == "m"
  movie_response = HTTP.get("http://localhost:3000/movies")
  movie_data = movie_response.parse(:json)
  movie_data.each do |data|
    puts "#{data["title"]}, #{data["year"]}, Plot: #{data["plot"]}"
  end
else
  actor_response = HTTP.get("http://localhost:3000/actors")
  actor_data = actor_response.parse(:json)
  actor_data.each do |data|
    puts "#{data["first_name"]} #{data["last_name"]}, known for: #{data["known_for"]}."
  end
end



