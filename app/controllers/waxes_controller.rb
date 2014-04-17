class WaxesController < ApplicationController
  before_action :set_wax, only: [:show, :edit, :update, :destroy]

  # GET /waxes
  # GET /waxes.json
  def index
    @waxes = Wax.all
  end

  # GET /waxes/1
  # GET /waxes/1.json
  def show
  end

  # GET /waxes/new
  def new
    @wax = Wax.new
  end

  # GET /waxes/1/edit
  def edit
  end

  # POST /waxes
  # POST /waxes.json
  def create
    @wax = Wax.new(wax_params)

    respond_to do |format|
      if @wax.save
        format.html { redirect_to @wax, notice: 'Wax was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wax }
      else
        format.html { render action: 'new' }
        format.json { render json: @wax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waxes/1
  # PATCH/PUT /waxes/1.json
  def update
    respond_to do |format|
      if @wax.update(wax_params)
        format.html { redirect_to @wax, notice: 'Wax was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waxes/1
  # DELETE /waxes/1.json
  def destroy
    @wax.destroy
    respond_to do |format|
      format.html { redirect_to waxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wax
      @wax = Wax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wax_params
      params.require(:wax).permit(:weight)
    end
end
