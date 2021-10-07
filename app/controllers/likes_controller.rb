class LikesController < ApplicationController
    def create
        like = Like.create(like_params)
        hero = Superhero.find_by(id: params[:superhero_id])
        hero.like_count += 1
        hero.save
        render json: hero.to_json(only: [:like_count])
        # byebug
      end
    end
    
    private
    
    def like_params
      params.require(:like).permit(:user_id, :hero_id)
    end
end
