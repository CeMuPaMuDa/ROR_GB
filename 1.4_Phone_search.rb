require 'html_to_plain_text'
require 'faraday'
url = 'https://gb.ru'
response = Faraday.get(url)
html = response.body
arr =  HtmlToPlainText.plain_text(html).lines(chomp: true)
phones = []
arr.each do |num|
  phone.push num if num.match(/^(\s*)?(\+)?([- _():=+]?\d[- _():=+]?){10,14}(\s*)?$/)
end
puts "Телефоны тех.поддержки GeekBrains: "
puts phones.uniq