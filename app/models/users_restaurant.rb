class UsersRestaurant < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant, touch: true
end
