class AppearanceSerializer < ActiveModel::Serializer
  attributes :id, :gender, :origin, :height, :weight, :eye_color, :hair_color
  has_one :superhero
end
