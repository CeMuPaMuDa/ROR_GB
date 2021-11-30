# frozen_string_literal: true

require 'html_to_plain_text'
require 'faraday'
url = 'https://gb.ru'
response = Faraday.get(url)
html = response.body
puts 'Телефоны тех.поддержки GeekBrains: '
puts HtmlToPlainText.plain_text(html).lines(chomp: true)
                    .select { |num| num.match(/^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$/) }
                    .uniq
