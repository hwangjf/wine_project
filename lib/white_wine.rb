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
