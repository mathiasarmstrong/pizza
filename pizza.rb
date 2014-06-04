class Pizza
end

class Topping
  attr_accessor :name

  # instantiate a new  topping.
  # name - the string name of the topping
  # and returns a new topping object
  def initialize(name)
    @name = name
  end
end
