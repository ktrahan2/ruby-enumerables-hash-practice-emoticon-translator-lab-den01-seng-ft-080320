require "yaml"
require 'pry'

def load_library(yaml_file)
  data = YAML.load_file(yaml_file)
  final_result = {}
  data.each_pair do |key, translation|
    final_result[key] = {"english" => translation[0], "japanese" => translation[1]}
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


  
