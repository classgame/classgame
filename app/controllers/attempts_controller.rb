class AttemptsController < ApplicationController
  before_action :set_attempt, only: [:show, :edit, :update, :destroy]

  def index
    @attempts = Attempt.all
  end

  def show
  end

  def new
    if params[:id]
      @@chapter  = Chapter.find(params[:id])
      @@contents = @@chapter.all_contents
    end
    @contents  = @@contents 
  end

  def edit
  end

  def create
    @attempt = Attempt.new()
    if params[:question]
      @attempt.final_experience_question(Alternative.where(id: attempt_params), current_user)
    elsif params[:text]
      @attempt.final_experience_text(Text.find(params[:text][:id]), current_user)
    else
      @attempt.final_experience_video(Video.find(params[:video][:id]), current_user)
    end  

    if @attempt.save
      @@contents.shift
      if @@contents == []
        @@contents = nil
        redirect_to course_path(@@chapter.course), notice: "Parabéns você terminou o chapter #{@@chapter.title}!"
      else
        respond_to do |format|
          format.html {redirect_to new_create_attempt_path, notice: "Parabéns você ganhou #{@attempt.experience}xp"}
        end 
      end
    end
  end
    
  def update
    respond_to do |format|
      if @attempt.update(attempt_params)
        format.html { redirect_to @attempt, notice: 'Attempt was successfully updated.' }
        format.json { render :show, status: :ok, location: @attempt }
      else
        format.html { render :edit }
        format.json { render json: @attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attempt.destroy
    respond_to do |format|
      format.html { redirect_to attempts_url, notice: 'Attempt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_attempt
      @attempt = Attempt.find(params[:id])
    end

    def attempt_params
      if params[:question]
        params[:question][:alternative_attributes] = params[:question][:alternative_attributes].map {|attrs| attrs.last } 
      end
      #params.require(:attempt).permit(:experience, :ending_time, :approved, :done)
      #params.require(:question)
    end
end