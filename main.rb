require "x"

def convert_reading_vertically(four_character_idioms)
  result = ""
  fci_length = four_character_idioms.length
  fci_length.times do |i|
    four_character_idioms.reverse.each do |four_character_idiom|
      result += four_character_idiom[i] + "   "
    end
    result += "\n"
  end
  result
end

def post
  x_credentials = {
    api_key:             ENV["API_KEY"],
    api_key_secret:      ENV["API_KEY_SECRET"],
    access_token:        ENV["ACCESS_TOKEN"],
    access_token_secret: ENV["ACCESS_TOKEN_SECRET"],
  }
  x_client = X::Client.new(**x_credentials)

  four_character_idioms = []
  File.open("shungoku.txt", "r") do |f|
    f.each_line do |l|
      four_character_idioms.push(l.chomp)
    end
  end
  chanting_words = four_character_idioms.sample(3) + ["故豪鬼成"]
  post_text = convert_reading_vertically(chanting_words) + "\n　👊 👊 👊" + "\n👊　　　　👊" + "\n👊　 👹　 👊" + "\n👊　　　　👊" + "\n　👊 👊 👊"
  post_data = {text: post_text}
  puts post_data
  puts x_client.post("tweets", post_data.to_json)
end

post