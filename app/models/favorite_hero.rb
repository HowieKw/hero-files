class FavoriteHero < ApplicationRecord
  belongs_to :user
  belongs_to :superhero

  validates :superhero_id, uniqueness: { scope: [:user_id], message: "can't fave the same hero twice" }
end
