class VersionSerializer < ActiveModel::Serializer
  attributes :id, :number, :comments, :active
  has_one :user
end
