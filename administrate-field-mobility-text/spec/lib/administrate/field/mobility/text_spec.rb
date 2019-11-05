require "administrate/field/mobility/text"

describe Administrate::Field::Mobility::Text do
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::Mobility::Text.new(:name, "foo", page)

      path = field.to_partial_path

      expect(path).to eq("/fields/mobility/text/#{page}")
    end
  end
end
