class MountainsController < ApplicationController

    def index 
        @mountains = Mountain.all

        render json: @mountains 
    end 

    def show 
        @mountain = Mountain.find(params[:id])

        render json: @mountain
    end 

    def create
        @mountains = Mountain.create({
            name: params[:name],
            height: params[:height]
    })

        render json: @mountains
    end

    def update
        @mountain = Mountain.find(params[:id])
        
        @mountain.update(
            name: params[:name],
            height: params[:height]
        )

        render json: @mountain
    end

    def destroy

        @mountain = Mountain.find(params[:id])

        @mountain.destroy
        
        render json: {message: "The #{@mountain.name} mountain has vanished"}
    end

end
