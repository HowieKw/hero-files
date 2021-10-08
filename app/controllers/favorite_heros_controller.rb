class FavoriteHerosController < ApplicationController

    def index 
        render json: current_user.favorite_heros, status: :ok
    end

    def create
        fav_hero = current_user.favorite_heros.new(fav_hero_params)
        if fav_hero.save
            render json: fav_hero, status: :created
        else
            render json: fav_hero.errors, status: :unprocessable_entity
        end
    end

    def destroy
        fav_hero = current_user.favorite_heros.find(params[:id])
        fav_hero.destroy
        render json: fav_hero, status: :ok
    end

    private

    def fav_hero_params
        params.permit(:superhero_id)
    end

end
