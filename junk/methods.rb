# require_relative 'wine'
#
#
# # res = open('https://lcboapi.com/products?access_key=MDo5MGQ3OTAzNi01MjBkLTExZTgtODEzMi05NzFiOTVkYmM3NGQ6dDhmeXZGZjF3ZXdLaUd6ZnRYRTZLSmxYbDlJYXNibm5VYjZR&page=1')
# #
# # data = JSON.parse(res.read)
# #
# #
# # puts data.keys
# # page_one = make_request('https://lcboapi.com/products?access_key=MDo5MGQ3OTAzNi01MjBkLTExZTgtODEzMi05NzFiOTVkYmM3NGQ6dDhmeXZGZjF3ZXdLaUd6ZnRYRTZLSmxYbDlJYXNibm5VYjZR&page=2')
#
#   def make_request(url)
#     beverage_page = open(url)
#     JSON.parse(beverage_page.read)
#   end
#
#
#   def wine_type(type)
#     url = 'https://lcboapi.com/products?access_key=MDo5MGQ3OTAzNi01MjBkLTExZTgtODEzMi05NzFiOTVkYmM3NGQ6dDhmeXZGZjF3ZXdLaUd6ZnRYRTZLSmxYbDlJYXNibm5VYjZR&page=1'
#     wines_array = []
#
#     x = 0
#     # while make_request(url)["pager"]["is_final_page"] == false
#     while x < 50
#       # binding.pry
#
#       page_hash = make_request(url)
#       beverage_array = page_hash["result"]
#
#       beverage_array.each do |beverage|
#         if beverage["varietal"] == type
#           binding.pry
#           split_year = beverage["released_on"].split("-")[0].to_i
#           float_price = beverage["price_in_cents"]/100
#           Wine.create(name: beverage["name"], category: beverage["secondary_category"], varietal: beverage["varietal"], origin: beverage["origin"], tasting_note: beverage["tasting_note"], price: float_price, release_year: split_year)
#         end
#       end
#
#       url = "https://lcboapi.com" + "#{page_hash["pager"]["next_page_path"]}"
#
#       if x % 10 == 0
#         puts "#{wines_array} @ #{x}"
#       end
#       x += 1
#     end
#     wines_array
#   end
#
#
# # def wine_choices_return(choice)
# #
# # end
#
#
#
# # name
# # price in cents
# # primary_category == wine
# # secondary_category == "White Wine", "Red Wine"
# # origin
# # (description- award)
# # tasting_note- recommdendation, expectation, description
# # varietal: type of wine i.e. Chardonnay, pinot noir etc
#   # Chardonnay, Riesling, Pinot Grigio, Sauvignon Blanc
#   # Cabernet Sauvignon, Pinot Noir, Syrah, Zinfandel, Malbec, Merlot
# # style: body & fruity/savory
# # sugar_content: sweet, semi, dry, D and XD
#
# # Step 1. primary category is wine and secondary is Red/White wine
# # Step 2. varietal // style // sugar_content // price // tasting_note exists
# # Step 3.
