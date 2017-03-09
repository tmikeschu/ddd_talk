require 'cafe'

RSpec.describe Cafe do
  describe "#make_coffee" do
    it "makes 16 cups of coffee" do
      cafe = Cafe.new
      cafe.make_coffee

      result = cafe.available_cups_of_coffee
      expect(result).to eq 16
    end
  end
end
