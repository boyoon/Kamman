class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @menus = Menu.all
    @items = Item.all
    respond_with(@menus)
  end

  def menu
    @menu = Menu.all
    @items = Item.all
  end

  def show
    respond_with(@menu)
  end

  def new
    @menu = Menu.new
    respond_with(@menu)
  end

  def edit
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to("/menu")
  end

  def update
    @menu.update(menu_params)
    redirect_to("/menu")
  end

  def destroy
    @menu.destroy
    redirect_to(:back)
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:name)
    end
end
