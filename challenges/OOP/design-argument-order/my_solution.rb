class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(house_attributes = {})
    @address = house_attributes[:address]
    @square_feet = house_attributes[:square_feet]
    @num_bedrooms = house_attributes[:num_bedrooms] || 3
    @num_baths = house_attributes[:num_baths] || 2
    @cost = house_attributes[:cost] || 320_000
    @down_payment = house_attributes[:down_payment] || 0.20
    @sold = house_attributes.fetch(:sold) { false }
    @short_sale = house_attributes[:short_sale]
    @has_tenants = house_attributes.fetch(:has_tenants){ false }

  # def initialize(address, square_feet, num_bedrooms = 3, num_baths = 2, cost = 320_000, down_payment = 0.20, sold = false, has_tenants = false)
  #   @address = address
  #   @square_feet = square_feet
  #   @num_bedrooms = num_bedrooms
  #   @num_baths = num_baths
  #   @cost = cost
  #   @down_payment = down_payment
  #   @sold = sold
  #   @short_sale = short_sale
  #   @has_tenants = has_tenants
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end


# Pon driver code aca para probar que todo este funcionando.
###### DRIVER CODE ########
