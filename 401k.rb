#!/usr/bin/env ruby

class ReturnOverTime
  def self.run(years, current_year, start, rate, contribution)
    new = start * (1 + rate) + contribution
    string_money = start.to_i.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
    puts "year ##{years - current_year}: $#{string_money}.00"
    self.run(years, current_year - 1, new, rate, contribution) if current_year > 0
  end
end
years = 35
starting_amount = 100_000
intrest_rate = 0.08
yearly_contribution = 25_000
puts ReturnOverTime.run(years, years, starting_amount, intrest_rate, yearly_contribution)
