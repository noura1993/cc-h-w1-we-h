def pet_shop_name(pet_shop)
    return pet_shop[:name]
end

def total_cash(pet_shop)
    return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
    pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, count)
    pet_shop[:admin][:pets_sold] += count
end

def stock_count(pet_shop)
    return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
    pets = []
    pet_shop[:pets].each{ |pet| 
        if (pet[:breed] == breed)
            pets.push(pet)
        end
    }
    return pets
end

def find_pet_by_name(pet_shop, name)
    pet_shop[:pets].each{ |pet| 
        if (pet[:name] == name)
            return pet
        end
    }
    return nil
end

def remove_pet_by_name(pet_shop, name)
    pet = find_pet_by_name(pet_shop, name)
    pet_shop[:pets].delete(pet)
end

def add_pet_to_stock(pet_shop, new_pet)
    pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
    return customer[:cash]
end

def remove_customer_cash(customer, amount)
    customer[:cash] -= amount
end

def customer_pet_count(customer)
   return  customer[:pets].length
end