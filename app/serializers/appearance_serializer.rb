class AppearanceSerializer < ActiveModel::Serializer
    attributes :id, :gender, :species, :height, :weight, :eye_color, :hair_color, :ani
    has_one :superhero
  end