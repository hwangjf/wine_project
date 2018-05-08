def greeting
  "Hello! Welcome to Wineopedia!"
  get_user_name
end

def get_user_name
  puts "Please enter your name: "
  name = gets.chomp
  User.find_or_create_by(name: name)
end

def choose_category
  puts "Please select a number: "
  puts "1. Red Wine"
  puts "2. White Wine"
  category = gets.chomp
  while category != "1" && category != "2"
    puts "Please select 1 or 2."
    category = gets.chomp
  end
  if category == "1"
    wine_category("Red Wine")
  else category == "2"
    wine_category("White Wine")
  end
end

def wine_category(n)
  Wine.where(category: n).limit(3).map do |wine|
    puts wine["name"]
  end
end

# def choose_varietal
#   puts "Please select type: "
#   varietal = gets.chomp
#
# end
