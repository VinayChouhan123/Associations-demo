class AuthersController < ApplicationController
  def index
    @authers = Auther.all
  end

  def book
  end

  def new
    @auther = Auther.new
  end

  def show
    @auther = Auther.find(params[:id])
  end

  def create
    @auther = Auther.new(auther_params)
    if @auther.save
      redirect_to authers_path
    else
      render :new
    end
  end

  def edit
    @auther = Auther.find(params[:id])
  end

  def update
    @auther = Auther.find(params[:id])

    if @auther.update(auther_params)
      redirect_to @auther
    else
      render :edit
    end
  end  

  def destroy
    @auther = Auther.find(params[:id])
    @auther.destroy

    redirect_to root_path
  end

  private

  def auther_params
    params.require(:auther).permit(:name, :email)
  end
end
