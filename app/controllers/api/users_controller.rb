class Api::UsersController < ApiController
    before_action :authenticated?
    skip_before_filter :verify_authenticy_token
    
    def index
        users = User.all
        render json: users, each_serializer: UserSerializer
    end
    
    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:email, :password_digest)
    end
    
end