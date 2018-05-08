# require 'json'
# require 'open-uri'
#
# res = open('https://lcboapi.com/products',
#   'Authorization' => 'Token MDo5MGQ3OTAzNi01MjBkLTExZTgtODEzMi05NzFiOTVkYmM3NGQ6dDhmeXZGZjF3ZXdLaUd6ZnRYRTZLSmxYbDlJYXNibm5VYjZR'
# )
# data = JSON.parse(res.read)
#
# # data.keys = status
#             # message
#             # pager
#             # result
#             # suggestion
#
# # puts data["result"][0]["primary_category"]
