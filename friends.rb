def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def favourite_food?(person, the_food)
  foods = person[:favourites][:things_to_eat]
  for food in foods
    if food == the_food 
      return true
    end
  end
  return false
end

def new_friend(person, friend)
  person[:friends] << friend
  return person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends].length
end

def wallet()
  total = 0
  for person in @people
    total += person[:monies]
  end
  return total
end