class RecipesController < ApplicationController
before_action :find_recipe, only: [:edit, :update, :show]

    def new
        @recipe = Recipe.new
        @ingredients = Ingredient.all
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def edit
        @ingredients = Ingredient.all
    end

    def show
    end

    def update
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, ingredient_ids: [])
    end

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end

end
