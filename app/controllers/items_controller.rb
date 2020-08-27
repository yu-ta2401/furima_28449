class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
       redirect_to root_path
    else
     render :show
    end
  end

  def index
    query = "SELECT * FROM items"
    
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

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

end