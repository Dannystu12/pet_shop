def pet_shop_name pet_shop
  pet_shop[:name]
end

def total_cash pet_shop
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash pet_shop, cash
  pet_shop[:admin][:total_cash] += cash
end
