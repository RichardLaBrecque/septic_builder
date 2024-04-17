class TestHolesController < ApplicationController
  before_action :set_test_hole, only: [:show, :edit, :update, :destroy]
  before_action :set_property, only: [:new]

  # GET /test_holes
  def index
    @test_holes = TestHole.all
  end

  # GET /test_holes/1
  def show
  end

  # GET /test_holes/new
  def new
    @test_hole = TestHole.new(property: @property)
  end

  # GET /test_holes/1/edit
  def edit
  end

  # POST /test_holes
  def create
    @test_hole = TestHole.new(test_hole_params)

    if @test_hole.save
      redirect_to @test_hole.property, notice: 'Test hole was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /test_holes/1
  def update
    if @test_hole.update(test_hole_params)
      redirect_to @test_hole, notice: 'Test hole was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /test_holes/1
  def destroy
    property = @test_hole.property
    @test_hole.destroy
    redirect_to property, notice: 'Test hole was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_test_hole
    @test_hole = TestHole.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def test_hole_params
    params.require(:test_hole).permit(:load_rate, :ledge_depth, :shwt, :date, :test_number, :property_id)
  end

  def set_property
    @property = Property.find(params[:property_id])
  end
end
