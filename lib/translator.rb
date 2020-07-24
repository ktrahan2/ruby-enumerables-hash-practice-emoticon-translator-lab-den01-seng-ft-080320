require 'yaml'
require 'pry'

def load_library(yaml_file)
  emoticon_hash = {}
  emo_library = YAML.load_file(yaml_file)
  emo_library.each do |meaning, value|
    emoticons_hash["get_meaning"][value[1]] = meaning
    emoticons_hash["get_name"][value[0]] = value[1]
  end
  binding pry
  emoticons_hash
end