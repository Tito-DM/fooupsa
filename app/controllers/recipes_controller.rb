class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def create
    #byebug
    flash[:notice] = 'Recipe was successfully created'
    @recipe =  Recipe.new(recip_params)
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def show

  end

  private
  def recip_params
      params.require(:recipe).permit(:name, :food_origen, :ingredient, :step)
  end

end