class AppearanceSerializer < ActiveModel::Serializer
    attributes :id, :gender, :species, :height, :weight, :eye_color, :hair_color, :img_url, :ani
    has_one :superhero
  end