class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def new
    end

    def show
        @item = Item.find(params[:id])
    end

    def create
        @item = Item.new(params_item)
        @item.save

        redirect_to items_path
    end

    def update
        @item = Item.find(params[:id])
        @item.update(params_item)

        redirect_to items_path
    end

    def edit
        @item = Item.find(params[:id])
        @item.save
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy

        redirect_to items_path
    end

    private 
    def params_item
        params.require(:item).permit(:name, :description, :item_ids => [])  
    end
end