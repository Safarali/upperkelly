class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update]
  before_action :authenticate_admin!, except: [:show]

  def index
    @houses = current_admin.houses
  end

  def show
  end

  def new
    @house = current_admin.houses.build
  end

  def create
    @house = current_admin.houses.build(house_params)
    if @house.save
      redirect_to @house, notice: "You successfully listed your house"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @house.update(house_params)
      redirect_to @house, notice: "Updated successfully"
    else
      render :edit
    end
  end

  def destroy
  end

  private
    def set_house
      @house = House.find(params[:id])
    end

    def house_params
      params.require(:house).permit(:name, :summary, :address, :bedroom, :bathroom, :garage, :sf, :price)
    end
end
