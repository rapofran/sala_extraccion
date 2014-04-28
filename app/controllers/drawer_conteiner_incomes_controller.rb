class DrawerConteinerIncomesController < ApplicationController
  before_action :set_drawer_conteiner_income, only: [:show, :edit, :update, :destroy]

  # GET /drawer_conteiner_incomes
  # GET /drawer_conteiner_incomes.json
  def index
    @drawer_conteiner_incomes = DrawerConteinerIncome.all
  end

  # GET /drawer_conteiner_incomes/1
  # GET /drawer_conteiner_incomes/1.json
  def show
  end

  # GET /drawer_conteiner_incomes/new
  def new
    @drawer_conteiner_income = DrawerConteinerIncome.new
  end

  # GET /drawer_conteiner_incomes/1/edit
  def edit
  end

  # POST /drawer_conteiner_incomes
  # POST /drawer_conteiner_incomes.json
  def create
    @drawer_conteiner_income = DrawerConteinerIncome.new(drawer_conteiner_income_params)

    respond_to do |format|
      if @drawer_conteiner_income.save
        format.html { redirect_to @drawer_conteiner_income, notice: 'Drawer conteiner income was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drawer_conteiner_income }
      else
        format.html { render action: 'new' }
        format.json { render json: @drawer_conteiner_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drawer_conteiner_incomes/1
  # PATCH/PUT /drawer_conteiner_incomes/1.json
  def update
    respond_to do |format|
      if @drawer_conteiner_income.update(drawer_conteiner_income_params)
        format.html { redirect_to @drawer_conteiner_income, notice: 'Drawer conteiner income was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drawer_conteiner_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drawer_conteiner_incomes/1
  # DELETE /drawer_conteiner_incomes/1.json
  def destroy
    @drawer_conteiner_income.destroy
    respond_to do |format|
      format.html { redirect_to drawer_conteiner_incomes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drawer_conteiner_income
      @drawer_conteiner_income = DrawerConteinerIncome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drawer_conteiner_income_params
      params.require(:drawer_conteiner_income).permit(:nro_remit)
    end
end
