class UsersController < ApplicationController
    skip_before_action :confirm_authentication
    
    def index
        render json: User.all
    end

    def show
        if current_user
        render json: current_user, status: :ok
        else
        render json: { user: 'not logged in' }, status: :unauthorized
        end
    end

    def create
        user = User.create(user_params)
        if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
        else
        render json: user.errors, status: :unprocessable_entity
        end
    end

    def update
        userUpdate = User.find_by(id: params[:id])
        if userUpdate
            userUpdate.update(user_params)
            render json: userUpdate, status: :accepted
        else 
            render json: {error: userUpdate.errors.full_messages}, status: :not_found
        end
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end

    def update_user_params
        params.permit(:username)
    end

    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end
end
