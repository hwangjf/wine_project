def white_varietal_selected(white_num)
  if white_num == "1"
    search_for_varietal("Chardonnay")
  elsif white_num == "2"
    search_for_varietal("Pinot Grigio")
  elsif white_num == "3"
    search_for_varietal("Riesling")
  else white_num == "4"
    search_for_varietal("Sauvignon Blanc")
  end
end

def search_for_varietal(white_var)
  puts "Here is a list of 10 delicious #{white_var} wines!"
  puts "Please select a number for more details: "
  n = 1
  Wine.where(varietal: white_var).limit(10).each do |wine|
    puts "#{n}. " + wine["name"]
    n += 1
  end
end
