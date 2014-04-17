class DrawerContainersController < ApplicationController
  before_action :set_drawer_container, only: [:show, :edit, :update, :destroy]

  # GET /drawer_containers
  # GET /drawer_containers.json
  def index
    @drawer_containers = DrawerContainer.all
  end

  # GET /drawer_containers/1
  # GET /drawer_containers/1.json
  def show
  end

  # GET /drawer_containers/new
  def new
    @drawer_container = DrawerContainer.new
  end

  # GET /drawer_containers/1/edit
  def edit
  end

  # POST /drawer_containers
  # POST /drawer_containers.json
  def create
    @drawer_container = DrawerContainer.new(drawer_container_params)

    respond_to do |format|
      if @drawer_container.save
        format.html { redirect_to @drawer_container, notice: 'Drawer container was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drawer_container }
      else
        format.html { render action: 'new' }
        format.json { render json: @drawer_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drawer_containers/1
  # PATCH/PUT /drawer_containers/1.json
  def update
    respond_to do |format|
      if @drawer_container.update(drawer_container_params)
        format.html { redirect_to @drawer_container, notice: 'Drawer container was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drawer_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drawer_containers/1
  # DELETE /drawer_containers/1.json
  def destroy
    @drawer_container.destroy
    respond_to do |format|
      format.html { redirect_to drawer_containers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drawer_container
      @drawer_container = DrawerContainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drawer_container_params
      params.require(:drawer_container).permit(:drawers)
    end
end
