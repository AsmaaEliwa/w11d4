class Api::ItemsController < ApplicationController

    def index
        @items = Item.all 
        render :index
    end 

    def show 
        @item = Item.find(params[:id])
        render :show
    end 

    def create
        @item = Item.new(item_params)
        if @item.save
            render :show
        else 
            render json: @items.errors.full_messages, status: 422
        end 
    end 

    def destroy 
        @item = Item.find(params[:id])
        if @item
            @item.delete 
            render :index
        end
    end 

    def update 
        @item = Item.find(params[:id])
        if @item.update(item_params)
            render :show
        else
            render json: @items.errors.full_messages, status: 422
        end 
    end 

    def item_params 
        params.require(:item).permit(:name, :price, :happiness, :image_url)
    end 

end
