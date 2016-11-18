class IngredientsController < ApplicationController
  def show
    @ingredient = Ingredient.find(params[:id])
    @cocktails = @ingredient.doses.map { |dose| dose.cocktail }
  end
end
