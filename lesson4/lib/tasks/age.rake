# frozen_string_literal: true

desc 'Проверка возраста по дате рождения (YYYY-MM-DD)'
task :age, [:birthdate] => :environment do |_task, args|
  args.with_defaults(birthdate: '1986-10-27')
  puts Age.new(args[:birthdate]).find_age
end
