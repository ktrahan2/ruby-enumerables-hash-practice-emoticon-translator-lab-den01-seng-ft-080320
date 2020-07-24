require 'yaml'
require 'pry'

def load_library(yaml_file)
  emoticons_hash = {"get_meaning" => {}, "get_name" => {}}
  emo_library = YAML::load(File.open(yaml_file)
  binding pry
  emo_library.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    binding pry
    emoticons_hash["get_meaning"][japanese] = meaning
    emoticons_hash["get_name"][english] = japanese
  end
  emoticons_hash
end