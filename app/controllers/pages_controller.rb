class PagesController < ApplicationController
  def home
  end

  def menu
    @menus = Menu.all
    @items = Item.all
  end

  def about
  end
end
