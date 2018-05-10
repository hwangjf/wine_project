require_relative 'red_wine.rb'

my_id = 0

def greeting
  "Hello! Welcome to Wineopedia!"
  get_user_name
end

def get_user_name
  puts "Please enter your name: "
  name = gets.chomp
  i_am = User.find_or_create_by(name: name)

  $my_id = i_am.id
  choose_category
end

def choose_category
  puts "Please select a number: "
  puts "1. Red Wine"
  puts "2. White Wine"
  num = gets.chomp
  while num != "1" && num != "2"
    puts "Please select 1 or 2."
    num = gets.chomp
  end
  if num == "1"
    wine_category("Red Wine")
  else num == "2"
    wine_category("White Wine")
  end
end

def wine_category(wine_color)
  # Wine.where(category: ).limit(3).map do |wine|
  #   puts wine["name"]
  # end
  if wine_color == "Red Wine"
    puts "Please select a number: "
    puts "1. Cabernet Sauvignon"
    puts "2. Malbec"
    puts "3. Merlot"
    puts "4. Pinot Noir"
    puts "5. Zinfandel"
    num = gets.chomp
    # binding.pry
    while num != "1" && num != "2" && num != "3" && num != "4" && num != "5"
      puts "Please select a number."
      num = gets.chomp
    end
    red_varietal_selected(num)
  else wine_color == "White Wine"
    puts "1. Chardonnay"
    puts "2. Pinot Grigio"
    puts "3. Riesling"
    puts "4. Sauvignon Blanc"
    num = gets.chomp
    while num != "1" && num != "2" && num != "3" && num != "4"
      puts "Please select a number."
      num = gets.chomp
    end
    white_varietal_selected(num)
  end
end
