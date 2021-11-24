# frozen_string_literal: true

require 'faraday'
url = 'https://gb.ru/courses'
response = Faraday.get(url)

puts response.body.lines.count
