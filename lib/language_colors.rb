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
      file = File.join(File.dirname(__FILE__), 'colors.json')
      File.open(file) do |f|
        @hash = JSON.parse(f.read)
      end
    end

    def color(lang)
      @hash[lang]
    end
  end
end
