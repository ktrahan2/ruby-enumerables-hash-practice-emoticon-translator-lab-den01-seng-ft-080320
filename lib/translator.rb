require "yaml"
require 'pry'

def load_library(yaml_file)
  data = YAML.load_file(yaml_file)
  final_hash = {}
  data.each do |key, value|
    final_hash[key] = {"english": value[0], "japanese": value[1]}
 #binding pry
  end
  final_hash
end

def get_english_meaning(yaml_file, emoticon)
  final_hash = load_library(yaml_file)
  result = nil
  final_hash.each do |key, value|
    if value[:japanese] == emoticon
      result = key
    end
  end
  if result == nil
      result = "Sorry, that emoticon was not found"
  end
  result
end

def get_japanese_emoticon(yaml_file, emoticon)
  final_hash = load_library(yaml_file)
  result = nil
  final_hash.each do |key, value|
    if value[:english] == emoticon
      result = value[:japanese]
    end
  end
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end


  
