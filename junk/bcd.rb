# def wine_type(type)
#   url = 'https://lcboapi.com/products?access_key=MDo5MGQ3OTAzNi01MjBkLTExZTgtODEzMi05NzFiOTVkYmM3NGQ6dDhmeXZGZjF3ZXdLaUd6ZnRYRTZLSmxYbDlJYXNibm5VYjZR&page=1'
#
#   while make_request(url)["pager"]["is_final_page"] == false
#
#     page_hash = make_request(url)
#     beverage_array = page_hash["result"]
#
#     beverage_array.each do |beverage|
#
#       if beverage["varietal"] == type && beverage["tasting_note"] != nil && beverage["price_in_cents"] != nil
#         # binding.pry
#
#         if beverage["released_on"] == nil
#           split_year = nil
#         else
#           split_year = beverage["released_on"].split("-")[0].to_i
#         end
#
#         float_price = beverage["price_in_cents"]/100
#
#         Wine.create(name: beverage["name"], category: beverage["secondary_category"], varietal: beverage["varietal"], origin: beverage["origin"], tasting_note: beverage["tasting_note"], price: float_price, release_year: split_year)
#       end
#     end
#
#     url = "https://lcboapi.com" + "#{page_hash["pager"]["next_page_path"]}"
#
#     # if x % 10 == 0
#     #   puts "#{wines_array} @ #{x}"
#     # end
#     # x += 1
#   end
#   # wines_array
# end
#
# wine_type("Riesling")
# wine_type("Sauvignon Blanc")
# wine_type("Merlot")
# wine_type("Chardonnay")
# wine_type("Zinfandel")
# wine_type("Pinot Grigio")
# wine_type("Pinot Noir")
# wine_type("Malbec")
# wine_type("Cabernet Sauvignon")
