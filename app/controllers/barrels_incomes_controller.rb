class BarrelsIncomesController < ApplicationController
  before_action :set_barrels_income, only: [:show, :edit, :update, :destroy]

  # GET /barrels_incomes
  # GET /barrels_incomes.json
  def index
    @barrels_incomes = BarrelsIncome.all
  end

  # GET /barrels_incomes/1
  # GET /barrels_incomes/1.json
  def show
  end

  # GET /barrels_incomes/new
  def new
    @barrels_income = BarrelsIncome.new
  end

  # GET /barrels_incomes/1/edit
  def edit
  end

  # POST /barrels_incomes
  # POST /barrels_incomes.json
  def create
    @barrels_income = BarrelsIncome.new(barrels_income_params)

    respond_to do |format|
      if @barrels_income.save
        format.html { redirect_to @barrels_income, notice: 'Barrels income was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barrels_income }
      else
        format.html { render action: 'new' }
        format.json { render json: @barrels_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barrels_incomes/1
  # PATCH/PUT /barrels_incomes/1.json
  def update
    respond_to do |format|
      if @barrels_income.update(barrels_income_params)
        format.html { redirect_to @barrels_income, notice: 'Barrels income was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barrels_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barrels_incomes/1
  # DELETE /barrels_incomes/1.json
  def destroy
    @barrels_income.destroy
    respond_to do |format|
      format.html { redirect_to barrels_incomes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barrels_income
      @barrels_income = BarrelsIncome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barrels_income_params
      params.require(:barrels_income).permit(:nro_remit)
    end
end
