class CommentsController < ApplicationController
    
    def index
        render json: current_user.comments, status: :ok
    end

    

    private

end
