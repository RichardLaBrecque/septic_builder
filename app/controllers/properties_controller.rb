class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index]

  # GET /properties
  def index
    @properties = @user.properties
  end

  # GET /properties/1
  def show
    @technologies = Technology.all
  end

  # GET /properties/new
  def new
    @property = User.find(params[:user_id]).properties.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to @property, notice: 'Property was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      redirect_to @property, notice: 'Property was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
    redirect_to properties_url, notice: 'Property was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def property_params
    params.require(:property).permit(:city, :street, :number, :design_unit, :flow_rate, :user_id, :water_source, :notes)
  end

  def user_params
    params.permit(:user_id)
  end

  def set_user
    @user = User.find(user_params[:user_id])
  end
end
