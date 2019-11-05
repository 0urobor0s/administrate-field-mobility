require "administrate/field/mobility/string"

describe Administrate::Field::Mobility::String do
  describe "#to_partial_path" do
    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::Mobility::String.new(:name, "foo", page)

      path = field.to_partial_path

      expect(path).to eq("/fields/mobility/string/#{page}")
    end
  end
end
