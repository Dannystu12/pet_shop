def pet_shop_name pet_shop
  pet_shop[:name]
end

def total_cash pet_shop
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash pet_shop, cash
  raise "Error: cant remove more cash than shop has" if cash > pet_shop[:admin][:total_cash]
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold pet_shop
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold pet_shop, additional_sales
  pet_shop[:admin][:pets_sold] += additional_sales
end

def stock_count pet_shop
  pet_shop[:pets].size
end

def pets_by_breed pet_shop, breed
  result = []
  pet_shop[:pets].each {|pet| result << pet if pet[:breed] == breed}
  result
end

def find_pet_by_name pet_shop, name
  pet_shop[:pets].each {|pet| return pet if pet[:name] == name}
  nil
end

def remove_pet_by_name pet_shop, name
  pet_shop[:pets].delete(find_pet_by_name pet_shop, name)
end

def add_pet_to_stock pet_shop, pet
  pet_shop[:pets] << pet
end

def customer_cash customer
  customer[:cash]
end

def remove_customer_cash customer, cash_to_remove
  raise "Error: cant remove more cash than customer has" if cash_to_remove > customer[:cash]
  customer[:cash] -= cash_to_remove
end

def customer_pet_count customer
  customer[:pets].count
end

def add_pet_to_customer customer, pet
  customer[:pets] << pet
end
