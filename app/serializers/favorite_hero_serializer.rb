class FavoriteHeroSerializer < ActiveModel::Serializer
  attributes :id, :favorite
  has_one :user
  has_one :superhero
end
