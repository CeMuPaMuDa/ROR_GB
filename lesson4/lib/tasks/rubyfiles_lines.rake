# frozen_string_literal: true

namespace :rubyfiles do
  desc 'Подсчитываем колличество строк в файлах *.rb в проекте'
  task :lines do
    i = 0
    Dir.glob('**/*.rb')
       .each { |f| i += File.readlines(f).count }
    puts "Во всех .*rb файлах количество строк составляет:
    ==> #{i} "
  end
end
