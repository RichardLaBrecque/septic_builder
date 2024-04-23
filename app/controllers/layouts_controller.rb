class LayoutsController < ApplicationController
  before_action :set_layout, only: [:show, :edit, :update, :destroy]

  # GET /layouts
  def index
    @layouts = Layout.all
  end

  # GET /layouts/1
  def show
  end

  # GET /layouts/new
  def new
    @layout = Layout.new
  end

  # GET /layouts/1/edit
  def edit
  end

  # POST /layouts
  def create
    @layout = Layout.new(layout_params)

    if @layout.save
      redirect_to @layout, notice: 'Layout was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /layouts/1
  def update
    if @layout.update(layout_params)
      redirect_to @layout, notice: 'Layout was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /layouts/1
  def destroy
    @layout.destroy
    redirect_to layouts_url, notice: 'Layout was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_layout
      @layout = Layout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def layout_params
      params.fetch(:layout, {})
    end
end
