class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]
  def index
    binding.pry
    @histories = History.all
  end

  def show
  end

  def new
    @history = History.new
  end

  def edit
  end

  def create
    @history = current_user.histories.new(history_params)
    if @history.save
      set_current_experience(@history.experience)
      redirect_to next_contents_path
    end
  end

  def update
    respond_to do |format|
      if @history.update(history_params)
        format.html { redirect_to @history, notice: 'History was successfully updated.' }
        format.json { render :show, status: :ok, location: @history }
      else
        format.html { render :edit }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @history.destroy
    respond_to do |format|
      format.html { redirect_to histories_url, notice: 'History was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def history_params
      params[:contents][:answers_attributes] = 
        params[:contents][:answers_attributes] ? 
          params[:contents][:answers_attributes].map{|t| {question_id:t.first, alternative_id:t.last}} 
            : nil
      
      params.require(:contents).permit(:content_id, 
                                        answers_attributes:[
                                          :question_id, 
                                          :alternative_id
                                        ])
    end
end