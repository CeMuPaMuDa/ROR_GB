# frozen_string_literal: true

require 'date'
class Age
  MONTH = if Date.new(Date.today.year).leap?
            [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze
          else
            [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze
          end
  @@current_date = Date.today.day
  @@current_month = Date.today.month
  @@current_year = Date.today.year

  def initialize(birth)
    birthday = birth.split('-').map(&:to_i)
    @birth_year, @birth_month, @birth_date = *birthday
  end

  # rubocop:disable Style/GuardClause
  def edit_params
    if @birth_date > @@current_date
      @@current_month -= 1
      @@current_date += MONTH[@birth_month - 1]
    end
    if @birth_month > @@current_month
      @@current_year -= 1
      @@current_month += 12
    end
  end
  # rubocop:enable Style/GuardClause
  def calculate_age
    @calculated_date = @@current_date - @birth_date
    @calculated_month = @@current_month - @birth_month
    @calculated_year = @@current_year - @birth_year
  end

  def find_age
    edit_params
    calculate_age
    if @calculated_year.positive? || @calculated_year.zero?
      "Ваш возраст составляет:
      Лет: #{@calculated_year}
      Месяцев: #{@calculated_month}
      Дней: #{@calculated_date}"
    else
      'Вы из будующего?'
    end
  end
end
