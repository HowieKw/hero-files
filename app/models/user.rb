class User < ApplicationRecord
    has_secure_password

    has_many :comments
    has_many :superheros, through: :comments

    has_many :likes
    has_many :liked_heros, through: :likes, class_name: 'Superhero' 

    has_many :favorite_heros
    has_many :favored_heros, through: :favorite_heros, class_name: 'Superhero'
end
