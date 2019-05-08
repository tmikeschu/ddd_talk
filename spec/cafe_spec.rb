require 'cafe'

RSpec.describe Cafe do
  describe "#make_coffee" do
    it "makes 16 cups of coffee" do
      cafe = Cafe.new
      cups_before = cafe.available_cups_of_coffee

      cafe.make_coffee

      cups_after = cafe.available_cups_of_coffee
      expect(cups_after - cups_before).to eq 16
    end
  end

  describe '#make_tea' do
    it 'makes 1 cup of chai tea and available leaves goes down by one' do
      cafe = Cafe.new
      chai_leaves_before = cafe.chai_leaves_count
      cups_before = cafe.available_cups_of_chai

      cafe.make_tea

      chai_leaves_after = cafe.chai_leaves_count
      cups_after = cafe.available_cups_of_chai

      expect(chai_leaves_before - chai_leaves_after).to eq 1
      expect(cups_after - cups_before).to eq 1
    end
  end
end
