class ItemsController < ApplicationController
  before_action :find_item, only: [:edit, :show, :update, :destroy]

  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create
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
  end

  def destroy
  end

  private
  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:price, :details, :description)
  end
end
