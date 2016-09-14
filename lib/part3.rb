class Dessert

  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
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
    @flavor = flavor
  end
  
  def delicious?
    return true unless @flavor == "black licorice"
  end
end
