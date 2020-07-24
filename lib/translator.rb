require "yaml"
require 'pry'

def load_library(yaml_file)
  data = YAML.load_file(yaml_file)
  final_hash = {}
  data.each_pair do |meaning, translation|
    final_hash[meaning] = {"english": translation[0], "japanese": translation[1]}
  binding pry
  end
  final_result
end

def get_english_meaning()
  library = YAML.load_library(yaml_file)
  
end

def get_japanese_meaning()
  library = YAML.load_library(yaml_file)
end


  
