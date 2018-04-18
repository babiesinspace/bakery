class Cake
  attr_reader :type, :description, :price
  def initialize(type, description, price="$8")
    @type = type
    @description = description
    @price = price
  end 
end 

class Cookie
  attr_reader :type, :description, :price
  def initialize(type, description, price="$4")
    @type = type
    @description = description
    @price = price
  end 
end 

class Muffin
  attr_reader :type, :description, :price
  def initialize(type, description, price="$5")
    @type = type
    @description = description
    @price = price
  end 
end 

