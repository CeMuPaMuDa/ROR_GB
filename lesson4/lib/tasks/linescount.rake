namespace :rubyfiles do
  desc 'Подсчитываем колличество файлов *.rb в проекте'
  task :linescount do
    i = 0
    Dir.glob('**/*.rb')
       .each{|f| i += File.readlines(f).count}
    puts "Во всех .*rb файлах количество строк составляет: 
    ==> #{i} "
  end
end