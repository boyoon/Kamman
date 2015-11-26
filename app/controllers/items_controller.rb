class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @items = Item.all
    @menus = Menu.all

  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to("/menu")
  end

  def update
    @item.update(item_params)
    redirect_to("/menu")
  end

  def destroy
    @item.destroy
    redirect_to(:back)
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:items, :description, :cost, :category)
    end
end
