class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :body, :completed?
  
  def completed?
      object.completed?
  end
  
end
