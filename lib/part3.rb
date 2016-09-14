class Dessert

  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    raise ArgumentError, "Error: name needs to be a string" unless name.is_a?(String)
    raise ArgumentError, "Error: calories needs to be a number" unless calories.is_a?(Numeric)
    @name = name
    @calories = calories
  end
  
  def healthy?
    calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert

  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    raise ArgumentError, "Error: flavor needs to be a string" unless flavor.is_a?(String)
    @flavor = flavor
  end
  
  def delicious?
    return true unless @flavor == "black licorice"
  end
end
