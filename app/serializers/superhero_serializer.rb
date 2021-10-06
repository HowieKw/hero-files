class SuperheroSerializer < ActiveModel::Serializer
  attributes :id, :alias, :name, :creator, :universe, :like_count

  has_one :appearance
end
