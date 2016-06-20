class HomeController < ApplicationController
  def index
  	@user = User.new
  end

  def create
   @user = User.create(name: params[:user][:name], image: params[:user][:image])
   redirect_to '/home/show'
  end

  def show
  	@users = User.all
  end
end
