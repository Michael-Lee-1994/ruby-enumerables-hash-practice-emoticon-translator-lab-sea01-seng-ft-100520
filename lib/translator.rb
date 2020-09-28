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
  emoji_hash
end

def get_japanese_emoticon(file_path, emoji)
  # code goes here
  library = load_library(file_path)
  emoji = library.keys.find do |key|
    library[key][:english] == emoji
  end
  emoji ? library[emoji][:japanese] : "Sorry, that emoji was not found"
end

def get_english_meaning(file_path, emoji)
  # code goes here
  library = load_library(file_path)
  emoji = library.keys.find do |key|
    library[key][:japanese] == emoji
  end
  emoji ? emoji : "Sorry, that emoticon was not found"
end