# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  emoji_hash = {}

  emoticons.each do |key, value|
    emoji_hash[key] = {}
    emoji_hash[key][:english] = value[0]
    emoji_hash[key][:japanese] = value[1]
  end
  emoji_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  if library.keys.find do |key|
    p key
    end
  else
    p "Sorry, that emoticon was not found"
  # emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end