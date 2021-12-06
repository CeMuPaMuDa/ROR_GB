# Ruby on Rails
***
## [Урок 3]('https://github.com/CeMuPaMuDa/ROR_GB/tree/master/lesson3')
### Задание 1
1. Создала .txt файлы в **IRB** (и в Rails консоли по анологии):
    * vera@vera-pc:~/Lern/GB_Ruby_and_Rails/ROR_GB/lesson3/lib/task1$ irb
    * irb(main):001:0> irb = File.new('irb_lp.txt', 'w')
    => #<File:irb_lp.txt>
    * irb(main):002:0> $LOAD_PATH.each{|el| irb.puts el}
    * irb(main):003:0> exit
2. Файлы задания №1 [находятся тут](https://github.com/CeMuPaMuDa/ROR_GB/tree/master/lesson3/lib/task1). Надеюсь, не слишком замудренно...
3. Файлы задания №2 в папке ***/lib*** соответственно заданию. В .Gemfile добавлен гем *Faraday*. В /сonfig/environments/development.rb добавлен config для автозагрузки файлов с ***/lib*** . Консоль у меня смогла адекватно работать только после отключения **spring**

   


