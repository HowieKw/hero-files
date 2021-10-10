class BackgroundSerializer < ActiveModel::Serializer
  attributes :id, :aliases, :place_of_birth, :affiliations, :former, :relatives, :history
  has_one :superhero
end
