current_path = File.dirname(__FILE__)
txt_file = Dir.entries(current_path).select{|x| x.include?('.txt')}
              .map{|el| current_path + "/#{el}"}
RAILS_CONSOLE = File.readlines(txt_file.first, chomp: true)
IRB_CONSOLE = File.readlines(txt_file.last, chomp: true)
puts "1. Разница:\n #{RAILS_CONSOLE - IRB_CONSOLE}"
puts "2 RAILS консоль длиннее IRB консоли на: #{RAILS_CONSOLE.size - IRB_CONSOLE.size}"
