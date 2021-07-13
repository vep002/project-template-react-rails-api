class EntrySerializer < ActiveModel::Serializer
  attributes :id, :description, :favorited, :private
  belongs_to :user
end
