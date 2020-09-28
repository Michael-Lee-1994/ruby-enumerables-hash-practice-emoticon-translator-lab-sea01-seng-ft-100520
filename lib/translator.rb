# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emojis = YAML.load_file(file_path)
  emoji_hash = {}

  emojis.each do |key,value|
    emoji_hash[key] = {}
    emoji_hash[key][:english]
    emoji_hash[key][:japanese]
  end
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  emoticon ? library[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end