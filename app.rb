require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index, layout: :main
end

def caesar(word, shift)
  chars = word.split("")
  shifted = []
  for char in chars
      if char.ord >= 65 && char.ord <= 90
          shifted_num = (char.ord + shift - 65) % 26 + 65
          shifted.push(shifted_num.chr)
      elsif char.ord >= 97 && char.ord <= 122
          shifted_num = (char.ord + shift - 97) % 26 + 97
          shifted.push(shifted_num.chr)
      else 
          shifted.push(char)
      end
  end
  shifted.join("")
end