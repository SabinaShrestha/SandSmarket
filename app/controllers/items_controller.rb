class ItemsController < ApplicationController
  before_action :find_item, only: [:edit, :show, :update, :destroy]

  def index
    @item = Item.all
  end

  def new
    @item = Item.new
    @categories = Category.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "created the item"
      redirect_to(items_path)
    else
      flash[:error] = "error error"
      render :create
    end
  end

  def edit
  end

  def show
  end

  def update
    if @item.update(item_params)
      redirect_to(items_path)
    else
      render :edit
    end

  end

  def destroy
    @item.destroy
    redirect_to(items_path)
  end

  private
    def find_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:price, :details, :description, :category_id, :item_photo)
    end
end
