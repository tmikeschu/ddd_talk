class Cafe
  attr_reader :available_cups_of_coffee

  def initialize
    @available_cups_of_coffee = 0
  end

  def make_coffee
    @available_cups_of_coffee += 16
  end
end
