#!/usr/bin/env ruby

class ReturnOverTime
  def self.run(years, current_year, start, rate, contribution)
    new = start * (1 + rate) + contribution
    puts "years left: #{years-current_year}, $#{start}"
    self.run(years, current_year - 1, new, rate, contribution) if current_year > 0
  end
end
puts ReturnOverTime.run(30, 30, 100_000, 0.08, 10_000)
