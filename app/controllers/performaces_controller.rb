class PerformacesController < ApplicationController
  before_action :set_performace, only: [:show, :edit, :update, :destroy]

  # GET /performaces
  # GET /performaces.json
  def index
    @performaces = Performace.all
  end

  # GET /performaces/1
  # GET /performaces/1.json
  def show
  end

  # GET /performaces/new
  def new
    @performace = Performace.new
  end

  # GET /performaces/1/edit
  def edit
  end

  # POST /performaces
  # POST /performaces.json
  def create
    @performace = Performace.new(performace_params)

    respond_to do |format|
      if @performace.save
        format.html { redirect_to @performace, notice: 'Performace was successfully created.' }
        format.json { render :show, status: :created, location: @performace }
      else
        format.html { render :new }
        format.json { render json: @performace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performaces/1
  # PATCH/PUT /performaces/1.json
  def update
    respond_to do |format|
      if @performace.update(performace_params)
        format.html { redirect_to @performace, notice: 'Performace was successfully updated.' }
        format.json { render :show, status: :ok, location: @performace }
      else
        format.html { render :edit }
        format.json { render json: @performace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performaces/1
  # DELETE /performaces/1.json
  def destroy
    @performace.destroy
    respond_to do |format|
      format.html { redirect_to performaces_url, notice: 'Performace was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performace
      @performace = Performace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performace_params
      params.require(:performace).permit(:nivel, :total_experience, :amount_exercises, :amount_courses)
    end
end
