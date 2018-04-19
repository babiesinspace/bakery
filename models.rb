#nice to have: seasons sold - so that they can be showcased on the site but with disabled ordering button?

class Cake
  attr_reader :type, :description, :price, :image
  def initialize(type, description, image, price="$8")
    @type = type
    @description = description
    @price = price
    @image = image
  end 
end 

class Cookie
  attr_reader :type, :description, :price, :image
  def initialize(type, description, image, price="$4")
    @type = type
    @description = description
    @price = price
    @image = image
  end 
end 

class Muffin
  attr_reader :type, :description, :price, :image
  def initialize(type, description, image, price="$5")
    @type = type
    @description = description
    @price = price
    @image = image
  end 
end 

class Bakery
  attr_accessor :cookies, :muffins, :cakes, :inventory

  def initialize(cookie_array=[], cake_array=[], muffin_array=[])
    @cookies = {}
    @muffins = {}
    @cakes = {}
    @inventory = {}
    create_muffin_inventory(muffin_array)
    create_cakes_inventory(cake_array)
    create_cookies_inventory(cookie_array)
    create_inventory
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

oatmeal = Cookie.new("Oatmeal Raisin", "A classic oatmeal raisin cookie with hints of browned butter, dark rum and cinnamon with a chewy texture. Packed with minced walnuts and raisins.", "oatmeal6.jpg")

chocolate_chip = Cookie.new("Chocolate Chip", "Not your mother's tollhouse - this chocolate chip cookie is made with dark chocolate chips with a soft texture that will melt in the mouth and finished with course sea salt.", "chocolatechip.jpeg")

family_cake = Cake.new("Summer Cake", "A family recipe - the cake itself is flavored with a dry Chardonnay, layered with fresh berries and vanilla custard, and encased in fresh whipped cream. It's light and subtle, and not too sweet.", "family3.jpg")

apple_cake = Cake.new("Apple Bundt Cake", "The kind of cake one can eat guiltlessly for breakfast (or any time of day). This rustic budnt has three layers of cinnamon-spiced apples hiding within cake which is subtly flavored with the barest hint of citrus. Dairy-free.", "apple1.jpg", "$6.50")

blackout = Cake.new("Brooklyn Blackout Cake", "A Brooklyn classic handed down through the ages. Ebinger's recipe has been recreated many times - but if any can hold a candle to the original remains a contentious topic. We gave it our all though; and if it's not quite as good as your memories of the classic (and when is it ever?) - at least you still have cake. A three-tiered devil’s food cake layered with chocolate pudding, slicked with dark chocolate frosting, and topped with additional devil’s food crumbs.", "blackout2.jpg")

lemon_poppy = Muffin.new("Lemon-Poppyseed Muffin", "In every diner across the country, lemon poppy-seed muffins are ubiquitous, and easy to love. Buttery and soft, tart and sweet, they are soothing in their simplicity, while seeds add just a bit of crunch. This version gets a healthy dose of lemony tang thanks to an ample amount of grated zest and a zippy lemon-juice glaze.", "lemon.jpg")

cranberry = Muffin.new("Cranberry-Orange Muffin", "The perfect fall inspired muffin. The tartness from the cranberries combined with the sweet citrus taste from the orange is a great way to start the morning.", "cranberry.jpg")

blueberry = Muffin.new("Jordan Marsh's Blueberry Muffins", "The classic blueberry muffin taken straight from the popular department store recipe. You may be inclined to ask, 'Classic muffin recipe from a department store?'. Trust us.", "blueberry.jpg")

bran = Muffin.new("Get-Up-And-Go! Bran Muffin", "As the name implies - these bran muffins are cram-jam full of nutritious ingredients like wheat bran, whole-grains, applesauce and blackstrap molasses. With a healthy dose of iron and protein, and 20% of your daily fiber intake - this grab and go breakfast will get you started on the right foot. For $2 extra - served toasted with your choice of nut spread and seasonal jam, or honey and flavored butter.", "bran3.jpg")

cookies = [oatmeal, chocolate_chip]
cakes = [family_cake, apple_cake, blackout]
muffins = [lemon_poppy, cranberry, blueberry, bran]

@bakery = Bakery.new(cookies, cakes, muffins)


