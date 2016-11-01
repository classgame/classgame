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
      render_content
    end
  end

  def edit
  end

  def create
    #binding.pry
    @attempt = Attempt.new()
    performace = current_user.performace
    if params[:question]
      @attempt.final_experience_question( Alternative.where(id: attempt_params), current_user )
    elsif params[:text]
      text = Text.find(params[:text][:id])
      performace.update_attributes( total_experience: performace.total_experience + text.experience )
    else
      video = Video.find(params[:video][:id])
      performace.update_attributes( total_experience: performace.total_experience + video.experience )
    end  

    if @attempt.save
      @@contents.shift
      if @@contents == []
        @@contents = nil
        redirect_to course_path(@@chapter.course), notice: "Parabéns você terminou o chapter #{@@chapter.title}!"
      else
        render_content
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

    def render_content
      type_content = @@contents.first.class.table_name
      respond_to do |format|
        if type_content == 'exercises'
          @exercise = @@contents.first
          format.html {render file: "attempts/partials/_exercise.html.erb"}
        elsif type_content == 'texts'
          @text = @@contents.first
          format.html {render file:'attempts/partials/_text.html.erb'}
        else
          @video = @@contents.first
          format.html {render file:'attempts/partials/_video.html.erb'}
        end 
      end
    end  
end