#nice to have: seasons sold - so that they can be showcased on the site but with disabled ordering button?

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

class Bakery
  attr_accessor :cookies, :muffins, :cakes, :inventory

  def initialize(cookie_array=[], cake_array=[], muffin_array=[])
    @cookies = {}
    @muffins = {}
    @cakes = {}
    @inventory = {}
  end

  def add_new_muffin(muffin)
    create_muffin_inventory([muffin])
    @inventory["muffins"] = @muffins
  end

  def add_new_cake(cake)
    create_muffin_inventory([cake])
    @inventory["cakes"] = @cakes
  end

  def add_new_cookie(cookie)
    create_muffin_inventory([cookie])
    @inventory["cookies"] = @cookies
  end

  private

  def create_muffin_inventory(array_of_muffins)
    array_of_muffins.each { |muffin| @muffins[muffin.type] = muffin }
  end 

  def create_cakes_inventory(array_of_cakes)
    array_of_cakes.each { |cake| @cakes[cake.type] = cake }
  end 

  def create_cookies_inventory(array_of_cookies)
    array_of_cookies.each { |cookie| @cookies[cookie.type] = cookie }
  end

  def create_inventory
    @inventory["muffins"] = @muffins
    @inventory["cakes"] = @cakes
    @inventory["cookies"] = @cookies
  end  

end



