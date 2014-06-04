class Pizza
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
