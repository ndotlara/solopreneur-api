class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_body
  has_one :user
  has_one :event
end
