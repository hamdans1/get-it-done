class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :private
end
