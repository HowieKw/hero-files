class SuperheroSerializer < ActiveModel::Serializer
  attributes :id, :alias, :name, :creator, :universe

  has_one :appearance
end
