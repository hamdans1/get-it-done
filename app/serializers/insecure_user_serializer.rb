class InsecureUserSerializer < ActiveModel::Serializer
    attributes :id, :email, :password_digest, :created_at
    
    def created_at
        object.created_at.strftime('%B %d, %Y')
    end
    
end