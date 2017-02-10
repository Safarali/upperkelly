class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update]
  before_action :authenticate_admin!, except: [:show]

  def index
    @houses = current_admin.houses
  end

  def show
    @photos = @house.photos
  end

  def new
    @house = current_admin.houses.build
  end

  def create
    @house = current_admin.houses.build(house_params)
    if @house.save

      if params[:images]
        params[:images].each do |image|
          @house.photos.create(image: image)
        end
      end

      @photos = @house.photos
      redirect_to @house, notice: "You successfully listed your house"
    else
      flash[:alert] = "All fields required!"
      render :new
    end
  end

  def edit
    if current_admin.id == @house.admin.id
      @photos = @house.photos
    else
      redirect_to root_path, notice: "You are not authorized!!!"
    end
  end

  def update
    if @house.update(house_params)

      if params[:images]
        params[:images].each do |image|
          @house.photos.create(image: image)
        end
      end

      redirect_to @house, notice: "Updated successfully"
    else
      flash[:alert] = "All fields required"
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
