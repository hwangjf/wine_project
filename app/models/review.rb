class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :wines
end
