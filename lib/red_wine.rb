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

def search_for_varietal(red_var)
  puts "Here is a list of 10 delicious #{red_var} wines!"
  puts "Please select a number for more details: "
  n = 1
  Wine.where(varietal: red_var)[0..9].each do |wine|
    puts "#{n}. " + wine["name"]
    n += 1
  end
    # add integer case statement check for integer within range
  num = gets.chomp
  selection = Wine.where(varietal: red_var)[0..9][num.to_i-1]
  hash = selection.attributes
  hash.each do|key,value|
    if key != "id"
      puts "#{key}: #{value}"
    end
  end
  id = selection["id"]
  my_review(id)
end
