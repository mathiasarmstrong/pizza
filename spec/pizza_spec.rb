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

    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza.new

      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end
  end

  describe ".vegetarian?" do
    it "returns a true or false value as to whether all the toppings on a pizza are vegetarian" do
      toppings= [
        Topping.new("mushrooms", vegetarian: true),
        Topping.new("pepperoni")
      ]
      pizza = Pizza.new(toppings)
      expect(pizza.vegetarian?).to be_false
    end
    it "returns a true or false value as to whether all the toppings on a pizza are vegetarian" do
      toppings= [
        Topping.new("mushrooms", vegetarian: true),
        Topping.new("olives",vegetarian: true)
      ]
      pizza = Pizza.new(toppings)
      expect(pizza.vegetarian?).to be_true
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
