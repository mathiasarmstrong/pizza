class Pizza
  attr_accessor :toppings
  def initialize(topping1 = [Topping.new("cheese", vegetarian: true)])
  @toppings=topping1
  end
  def vegetarian?
    veg = @toppings.select{|top| top.vegetarian == false}
    veg.length == 0 ? (return true) : (return false)
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
