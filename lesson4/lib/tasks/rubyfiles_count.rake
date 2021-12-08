# frozen_string_literal: true

namespace :rubyfiles do
  desc 'Подсчитываем колличество файлов *.rb в проекте'
  task :count do
    puts "В проекте файлов с расширением *.rb :
    ==> #{Dir.glob('**/*.rb').count} "
  end
end
