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
end
