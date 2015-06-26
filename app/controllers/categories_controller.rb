class CategoriesController < ApplicationController

  before_action :find_category, only: [:edit, :update, :destroy]
  before_action :find_items, only: [:show]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "saved the category"
      redirect_to(categories_path)
    else
      flash[:error] = "this didn't work"
      render :create
    end
  end


  def edit
  end

  def show
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def find_category
    @category = Category.find_by(id: params[:id])
  end

  def find_items
    @category = Category.find_by(id: params[:id])
    @items = Item.where(category_id: @category.id)
  end

  def category_params
    params.require(:category).permit(:name, :description, :category_photo)
  end
end
