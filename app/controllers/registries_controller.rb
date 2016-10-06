class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]

  #Registry user course
  def reg_user_course
    time = Time.new #initializing date
    @course = Course.find(params[:id]) #find for course with params[:id]
    @user = User.find(current_user.id) #find for user with id of devise
    
    respond_to do |format|
      if Registry.where(user:@user, course:@course) == [] #valid if user already subscribe in course
          @registry = Registry.create(active:true,finished_course:false,limit_date:time+600_000,user:@user,course:@course)  
          format.html { redirect_to registries_path, notice: "Inscrição feita com sucesso!" }
          format.json { render :show, status: :created, location: @registry }
      else
          format.html { redirect_to registries_path, notice: "Usuario ja cadastrado no curso!" }
          format.json { render :show, status: :created, location: @registry }
      end
    end
  end

  # GET /registries
  # GET /registries.json
  def index
    #@registries = Registry.all
    @registries = Registry.where(user_id: current_user.id) #Filter registration in course through users
  end

  # GET /registries/1
  # GET /registries/1.json
  def show
  end

  # GET /registries/new
  def new
    @registry = Registry.new
  end

  # GET /registries/1/edit
  def edit
  end

  # POST /registries
  # POST /registries.json
  def create
    @registry = Registry.new(registry_params)

    respond_to do |format|
      if @registry.save
        format.html { redirect_to @registry, notice: 'Registry was successfully created.' }
        format.json { render :show, status: :created, location: @registry }
      else
        format.html { render :new }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registries/1
  # PATCH/PUT /registries/1.json
  def update
    respond_to do |format|
      if @registry.update(registry_params)
        format.html { redirect_to @registry, notice: 'Registry was successfully updated.' }
        format.json { render :show, status: :ok, location: @registry }
      else
        format.html { render :edit }
        format.json { render json: @registry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registries/1
  # DELETE /registries/1.json
  def destroy
    @registry.destroy
    respond_to do |format|
      format.html { redirect_to registries_url, notice: 'Registry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registry
      @registry = Registry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registry_params
      params.require(:registry).permit(:active, :finished_course, :limit_date, :course_id)
    end
end
