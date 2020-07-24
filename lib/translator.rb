require 'yaml'
require 'pry'

def load_library(yaml_file)
  
  emoticons = {
  emo_library = YAML.load_file(yaml_file)