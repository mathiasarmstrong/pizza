require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
end

describe Topping do

  let(:topping){Topping.new('olives', true)}

  it "exists" do
    expect(Topping).to be_a(Class)
  end
  describe ".initialize" do
    it "sets the name of the topping" do
      # topping=Topping.new("olives")
      expect(topping.name).to eq("olives")
    end
    it "lets us know if the topping is vegetarian"do
      expect(topping.vegetarian).to be_true
    end
  end
end
