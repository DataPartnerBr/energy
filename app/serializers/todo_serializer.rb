class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :completed, :order
  has_one :user
end
