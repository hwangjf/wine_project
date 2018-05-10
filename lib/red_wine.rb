def red_varietal_selected(red_num)
  if red_num == "1"
    search_for_varietal("Cabernet Sauvignon")
  elsif red_num == "2"
    search_for_varietal("Malbec")
  elsif red_num == "3"
    search_for_varietal("Merlot")
  elsif red_num == "4"
    search_for_varietal("Pinot Noir")
  else red_num == "5"
    search_for_varietal("Zinfandel")
  end
end

def search_for_varietal(varietal)
  x = 0
  prints_wine_and_options(varietal, x)


  #
  # i num == 11
  #   x += 10
  #   prints_wine_and_options(varietal, x)
  #   num = gets.chomp.to_i
  #   while [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11].include?(num) == false
  #     puts "Please select a number."
  #     num = gets.chomp.to_i
  #   end
  # end

  # wine_details_and_review(varietal, x)
  # more wines
end

def prints_wine_and_options(varietal, x)
  puts "Here is a list of 10 delicious #{varietal} wines!"
  puts "Please select a number for more details: "
  n = 1
  Wine.where(varietal: varietal)[x..(x+9)].each do |wine|
    puts "#{n}. " + wine["name"]
    n += 1
  end
  puts "11. See more wines"

  num = gets.chomp.to_i

  while [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11].include?(num) == false
    puts "Please select a number."
    num = gets.chomp.to_i
  end

  if [1,2,3,4,5,6,7,8,9,10].include?(num)
    wine_details_and_review(varietal, x, num)
  else
    while num == 11
      x+=10
      prints_wine_and_options(varietal, x)
    end
  end
end

def wine_details_and_review(varietal, x, num)
  selection = Wine.where(varietal: varietal)[x..(x+9)][num-1]
  hash = selection.attributes
  hash.each do|key,value|
    if key != "id"
      puts "#{key}: #{value}"
    end
  end
  id = selection["id"]
  my_review(id)
end
