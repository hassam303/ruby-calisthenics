class Dessert
  attr_accessor:name
  attr_accessor:calories
  def initialize(name, calories)
    @name = name 
    @calories = calories
    
  end
  def healthy?
    return @calories < 200
  end
  def delicious?
    return true 
  end
end

class JellyBean < Dessert
  attr_accessor:flavor
  attr_reader:calories
  attr_reader:name
  def initialize(flavor)
    @flavor = flavor 
    @calories = 5
    if @flavor == 
    @name = @flavor + " jelly bean"
    end
  end
  
  def delicious?
    return true unless @flavor == 'licorice'
  end 

end
