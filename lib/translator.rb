require "yaml"
require 'pry'

def load_library(yaml_file)
  data = YAML.load_file(yaml_file)
  final_hash = {}
  data.each do |inner_hash, translation|
    final_hash[inner_hash] = {"english": translation[0], "japanese": translation[1]}
 #binding pry
  end
  final_hash
end

def get_english_meaning(yaml_file, emoticon)
  final_hash = load_library(yaml_file)
  result = final_hash[inner_hash][emoticon]
  if result == nil
    return "Sorry, that emoticon was not found"
  end
  result
end

def get_japanese_meaning(yaml_file, emoticon)
  library = load_library(yaml_file)
end


  
