class PowerstatSerializer < ActiveModel::Serializer
  attributes :id, :intelligence, :strength, :speed, :durability, :power, :combat
  has_one :superhero
end
