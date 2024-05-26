# frozen_string_literal: true

require 'open-uri'
require 'yaml'
require 'json'

yaml_content = URI.open('https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml',
                    &:read)
yaml_data = YAML.safe_load(yaml_content)

hash = {}
yaml_data.each do |hmm|
  hash[hmm.first] = hmm[1]['color'] unless hmm[1]['color'].nil?
end

File.open('lib/colors.json', 'w') do |f|
  f.write(hash.to_json)
end
