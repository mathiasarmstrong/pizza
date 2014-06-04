require './pizza'

describe Pizza do
  # it "exists" do
  #   expect(Pizza).to be_a(Class)
  # end

  describe ".initialize" do
    it "records all of the toppings" do
    toppings= [
      Topping.new("mushrooms", vegetarian: true),
      Topping.new("pepperoni")
    ]
    pizza = Pizza.new(toppings)

    expect(pizza.toppings).to eq(toppings)
    end
  end
end

describe Topping do

  let(:topping){Topping.new('olives', vegetarian: true)}

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
