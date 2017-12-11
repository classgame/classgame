params[:contents][:answers_attributes] =
class PerformancesController < ApplicationController
  before_action :set_performance, only: [:show, :edit, :update, :destroy]

  # GET /performances
  # GET /Performances.json
  def index
    @performances = Performance.all
  end

  # GET /Performances/1
  # GET /performaces/1.json
  def show
  end

  # GET /Performances/new
  def new
    @performance = Performance.new
  end

  # GET /Performances/1/edit
  def edit
  end

  # POST /Performances
  # POST /Performances.json
  def create
    @performance = Performance.new(performance_params)

    respond_to do |format|
      if @performance.save
        format.html { redirect_to @performance, notice: 'performance was successfully created.' }
        format.json { render :show, status: :created, location: @performance }
      else
        format.html { render :new }
        format.json { render json: @performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performances/1
  # PATCH/PUT /performances/1.json
  def update
    respond_to do |format|
      if @performance.update(performance_params)
        format.html { redirect_to @performance, notice: 'performance was successfully updated.' }
        format.json { render :show, status: :ok, location: @performance }
      else
        format.html { render :edit }
        format.json { render json: @performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performances/1
  # DELETE /performances/1.json
  def destroy
    @performance.destroy
    respond_to do |format|
      format.html { redirect_to performances_url, notice: 'performance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_performance
    @performance = Performance.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def performance_params
    params.require(:performance).permit(:nivel, :total_experience, :amount_exercises, :amount_courses)
  end
end
