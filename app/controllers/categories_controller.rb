class CategoriesController < ApplicationController

  before_action :find_category, only: [:edit, :show, :update, :destroy]

  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
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
  end

  def destroy
  end

  private
  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
