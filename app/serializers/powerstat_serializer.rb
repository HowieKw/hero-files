class PowerstatSerializer < ActiveModel::Serializer
  attributes :id, :intelligence, :strength, :speed, :durability, :energy_projection, :combat
  has_one :superhero
end
