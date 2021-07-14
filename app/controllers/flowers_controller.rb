class FlowersController < ApplicationController

    def new
        @garden = Garden.find(params[:garden_id])
        @flower = Flower.new
    end

    def create
        @garden = Garden.find(params[:garden_id])
        @flower = Flower.new(flower_params)
        @flower.garden = @garden
        if @flower.save
            redirect_to garden_path(@garden)
        else
            render 'flowers/new', notice: 'Fill in the right infomation pls!' 
        end
    end

    def destroy
        @flower = Flower.find(params[:id])
        garden = Garden.find(@flower.garden_id)
        @flower.destroy
        redirect_to garden_path(garden)
    end

    private

    def flower_params
        params.require(:flower).permit(:name, :image_url)
    end
end
