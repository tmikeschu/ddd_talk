class Cafe
  attr_reader :available_cups_of_coffee,
              :chai_leaves_count,
              :available_cups_of_chai

  def initialize
    @available_cups_of_coffee = 0
    @chai_leaves_count        = 10
    @available_cups_of_chai   = 0
  end

  def make_coffee
    @available_cups_of_coffee += 16
  end

  def make_tea
    @chai_leaves_count      -= 1
    @available_cups_of_chai += 1
  end
end
