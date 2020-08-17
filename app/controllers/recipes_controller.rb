class RecipesController < ApplicationController
    before_action :set_recipe, only: [:edit, :update]
    before_action :get_ingredients, only: [:new, :edit]

    def index
        @recipe=Recipe.all
    end

    def new
        @recipe=Recipe.new
    end

    def create
        @recipe.Recipe.create(recipe_params)
        if @recipe.valid?
            redirect_to recipes_path
        else
            redirect_to new_recipes_path
        end
    end

    def edit

    end

    def update
        @recipe.update(recipe_params)
        if @recipe.valid?
            redirect_to recipes_path
        else
            redirect_to edit_recipe_path
        end
    end

    private

    def set_recipe
        @recipe = Recipe.find(params[:id])
    end

    def get_ingredients
        @ingrediens=Ingredient.all
    end

    def recipe_params
        params.require(:recipe).permit(:name, ingredients: [])
    end

end
