class SuperheroSerializer < ActiveModel::Serializer
  attributes :id, :alias, :name, :creator, :universe, :like_count, :img_url
end
