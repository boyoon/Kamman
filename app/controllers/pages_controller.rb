class PagesController < ApplicationController
  def home
  end

  def menu
    @menus = Menu.all
    @items = Item.all
    @item = Item.new
    @menu = Menu.new
  end

  def about
  end
end
