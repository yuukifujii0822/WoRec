class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end
end
