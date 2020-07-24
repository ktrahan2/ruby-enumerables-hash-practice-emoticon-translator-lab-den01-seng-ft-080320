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
  library = load_library(yaml_file)
  load_library.each do |japanese, english|
    if emoticon == japanese
      return = english
end

def get_japanese_meaning()
  library = YAML.load_library(yaml_file)
end


  
