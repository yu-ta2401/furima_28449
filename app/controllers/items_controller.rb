class ItemsController < ApplicationController

  before_action :set_item
  def edit
  end

  def update
    if item.update(item_params)
      redirect_to root_path
    else
      render :edit
    end

  def index
    query = "SELECT * FROM items"
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
    # render action: :new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
        redirect_to root_path
    else
        render :new
    end
  end

  def show
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :explanation, :price, :state_id, :category_id, :burden_id, :day_id, :shippingorigin_id).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end