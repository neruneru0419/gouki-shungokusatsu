require "x"

def convert_reading_vertically(four_character_idioms)
  fci_length = four_character_idioms.length
  fci_length.times do |i|
    four_character_idioms.reverse.each do |four_character_idiom|
      print four_character_idiom[i] + "  "
    end
    puts ""
  end
end

def post(post_text)


  # Initialize an X API client with your OAuth credentials
  x_client = X::Client.new(**x_credentials)

  # Get data about yourself
  post_data = {text: post_text}
  puts x_client.post("tweets", post_data.to_json)
end

post("test")