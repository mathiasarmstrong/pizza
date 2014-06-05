class Pizza
  attr_accessor :toppings
  def initialize(topping1 = [Topping.new("cheese", vegetarian: true)])
  @toppings=topping1
  end
  def vegetarian?
   return veg = @toppings.all?{|top| top.vegetarian == true}
  end
  def add_topping(top, veg = false)
    topp = Topping.new(top, vegetarian: veg)
    @toppings << topp
  end
end

class Topping
  attr_accessor :name, :vegetarian

  # instantiate a new  topping.
  # name - the string name of the topping
  # and returns a new topping object
  def initialize(name, vegetarian: false)
    @name = name
    @vegetarian=vegetarian
  end


end
