class SuperheroSerializer < ActiveModel::Serializer
  attributes :id, :alias, :name, :creator, :universe
end
