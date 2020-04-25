# frozen_string_literal: true

require 'language_colors/version'
require 'json'

# Module to hold the class
module LanguageColors
  class Error < StandardError; end
  # Your code goes here...
  @hash = Hash.new(false)

  # Class that contains the main code
  class LanguageColors
    def initialize
      file = File.open 'colors.json'
      @hash = JSON.parse file
    end

    def color(lang)
      hash[lang]
    end
  end
end
