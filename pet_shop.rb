def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_add)
  return pet_shop[:admin][:total_cash] += cash_add
end

def pets_sold(pets)
  return pets[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pets_add)
  return pet_shop[:admin][:pets_sold] +=pets_add
end

def stock_count(pet_shop)
  # p pet_shop.class
  # p pet_shop[:pets].class
  # the name of the arrray is on the left side (variable)
  #What it contains is on the right side.
  pets_array = pet_shop[:pets]
  return pets_array.length
end

def pets_by_breed(pet_shop, breed)
  array = []
  for pets in pet_shop[:pets]
    if pets[:breed] == breed
      array << pets
    end
  end
  return array
end

def find_pet_by_name(pet_shop, name)
  pets_array= pet_shop[:pets]
  for pets in pets_array
    if pets[:name] == name
      return pets
      end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, name)
  pet_shop[:pets] << name
  return pet_shop[:pets].length
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  return customer[:cash] -= cash
end

def customer_pet_count(customer)
  customer_array = customer[:pets]
  return customer_array.length
end

def add_pet_to_customer(customer, new_pet)
   customer[:pets] << new_pet
   return customer[:pets].count
end
