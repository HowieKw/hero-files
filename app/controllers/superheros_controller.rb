class SuperherosController < ApplicationController
    def index
        render json: Superhero.all
    end

    def show
        render json: find_hero, serializer: FullDetailSerializer
    end

    private

    def find_hero
        superhero = Superhero.find(params[:id])
    end
end
