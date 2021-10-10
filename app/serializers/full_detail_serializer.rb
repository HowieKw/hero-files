class FullDetailSerializer < ActiveModel::Serializer
    attributes :id, :alias, :name, :creator, :universe, :powers, :like_count, :img_url
    
    has_one :appearance
    has_one :background
    has_one :powerstat

    has_many :comments
end
  