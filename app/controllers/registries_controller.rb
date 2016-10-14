class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]

  def index
    @registries = current_user.registries
  end
  
  def reg_user_course
    time = Time.new 
    course = Course.find(params[:id]) 
    respond_to do |format|
      if current_user.courses.find_by_id(course.id)
        format.html { redirect_to registries_path, notice: "Usuario ja cadastrado no curso!" }
        format.json { render :show, status: :created, location: @registry }          
      else
        @registry = Registry.new(active:true,finished_course:false,limit_date:time+600_000,user:current_user,course:course)  
        if @registry.save
          format.html { redirect_to registries_path, notice: "Inscrição feita com sucesso!" }
          format.json { render :show, status: :created, location: @registry }
        else
          format.html { render :index }
          format.json { render json: @registry.errors, status: :unprocessable_entity }  
        end
      end
    end
  end

  def show
  end

  def new
    @registry = Registry.new
  end

  def edit
  end

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

  def destroy
    @registry.destroy
    respond_to do |format|
      format.html { redirect_to registries_url, notice: 'Registry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_registry
      @registry = Registry.find(params[:id])
    end

    def registry_params
      params.require(:registry).permit(:active, :finished_course, :limit_date, :course_id)
    end
end
