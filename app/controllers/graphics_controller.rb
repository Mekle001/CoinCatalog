class GraphicsController < ApplicationController
  before_action :logged_in_user, only: [:create, :new, :edit, :update, :destroy]

  def new
    @graphic = Graphic.new
  end

  def create
    @graphic = Graphic.new(graphic_params)

    if @graphic.save
      redirect_to @graphic
    else
      render 'new'
    end
  end

  def index
    @graphic = Graphic.all()
  end

  def edit
    @graphic = Graphic.find(params[:id])
  end

  def update
    @graphic = Graphic.find(params[:id])
    if @graphic.update(graphic_params)
      redirect_to @graphic
    else
      render 'edit'
    end
  end

  def show
    @graphic = Graphic.find(params[:id])
  end

  def destroy
    @graphic = Graphic.find(params[:id])
    @graphic.destroy

    redirect_to graphics_path
  end

  private

  def graphic_params
    params.require(:graphic).permit(:name, :format, :width, :height, :image, :remove_image)
  end
end
