class EntrySerializer < ActiveModel::Serializer
  attributes :id, :description, :favorited, :private
  has_one :user
end
