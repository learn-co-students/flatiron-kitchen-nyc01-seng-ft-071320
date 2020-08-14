class RecipesController < ApplicationController
before_action :find_recipe, only: [:show, :edit, :update]

    def show
    end

    def new
        @recipe = Recipe.new
        @recipe.recipe_ingredients.build
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to @recipe
    end
    
    def edit
    end
    
    def update
        @recipe.update(recipe_params)
        redirect_to @recipe
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :instructions, ingredient_ids: [])
    end

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end
