class Dessert

  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert

  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor.downcase if flavor.is_a?(String) else flavor
  end

  def healthy?
    super
  end
  
  def delicious?
    return super unless @flavor == "black licorice" else return false
  end
end
