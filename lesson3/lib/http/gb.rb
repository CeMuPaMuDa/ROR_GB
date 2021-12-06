# frozen_string_literal: true

class Gb
  def self.count(url = 'https://gb.ru/courses')
    Faraday.get(url).body.lines(chomp: true).count
  end
end
