class Superhero < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments

    has_many :likes
    has_many :liked_by_users, through: :likes, class_name: 'User' 

    has_many :favorite_heros
    has_many :favored_users, through: :favorite_heros, class_name: 'User'

    has_one :powerstat
    has_one :appearance
    has_one :background
end
