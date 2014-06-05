require './pizza'

describe Pizza do
  # it "exists" do
  #   expect(Pizza).to be_a(Class)
  # end

  describe "#initialize" do
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

  describe "#vegetarian?" do
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
   describe "#add_topping" do
    it "adds a topping to the pizza" do
      toppings= [
        Topping.new("mushrooms", vegetarian: true),
        Topping.new("olive", vegetarian: true)
      ]
      pizza = Pizza.new(toppings)

      expect(pizza.toppings).to eq(toppings)
      expect(pizza.vegetarian?).to be_true

        pizza.add_topping("pepperoni")
        toppings<<Topping.new("pepperoni")

      expect(pizza.toppings).to eq(toppings)
      expect(pizza.vegetarian?).to be_false
    end
  end
  describe "#deliver!" do
    it "marks a delivery time attribute 30 mins from now" do
      pizza = Pizza.new
      time_now = Time.now
      Time.stub(:now).and_return(time_now)
      pizza.deliver!
      expect(pizza.delivery_time).to eq(Time.now+30*60)
    end
  end

  describe "#late?" do
    it " tells us if it past the delivery time or not" do
      pizza = Pizza.new
      time_now = Time.now

      Time.stub(:now).and_return(time_now)
      pizza.deliver!
      expect(pizza.late?).to be_false

      Time.stub(:now).and_return(time_now+2000)
      expect(pizza.late?).to be_true

    end
  end
end

describe Topping do

  let(:topping){Topping.new('olives', vegetarian: true)}

  it "exists" do
    expect(Topping).to be_a(Class)
  end
  describe "#initialize" do
    it "sets the name of the topping" do
       # topping=Topping.new("olives")
      expect(topping.name).to eq("olives")
    end
    it "lets us know if the topping is vegetarian"do
      expect(topping.vegetarian).to be_true
    end
  end




end
