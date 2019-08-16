class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to @cocktail, notice: 'Cocktail was successfully created.' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  # def check_for_image
  #   if @cocktail.photo == nil
  #     @cocktail.photo = @cocktail.image_url
  #   end
  #   if @cocktail.photo == nil
  #     @cocktail.photo = "https://images.unsplash.com/photo-1527761939622-9119094630cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
  #   end
  # end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo, :ingredient, :image_url)
  end
end
