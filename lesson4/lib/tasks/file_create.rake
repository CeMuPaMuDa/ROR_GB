# frozen_string_literal: true

namespace :file do
  desc 'Создание файла development.txt в директории tmp/'
  task create: :environment do
    f = File.new(Rails.root.join('tmp/development.txt'), 'a+')
    f.write(Time.now.strftime("%d-%m-%Y %H:%M\n"))
  end
end
