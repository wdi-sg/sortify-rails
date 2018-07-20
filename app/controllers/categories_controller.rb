class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def new
    end

    def show
        @category = Category.find(params[:id])
        @item_show = @category.items
    end

    def create
        @category = Category.new(params_category)
        @category.save

        redirect_to categories_path
    end

    def update
        @category = Category.find(params[:id])
        @category.update(params_category)

        redirect_to categories_path
    end

    def edit
        @category = Category.find(params[:id])
        @category.save
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy

        redirect_to categories_path
    end

    private 
    def params_category
        params.require(:category).permit(:name, :description, :item_ids => [])  
    end
end