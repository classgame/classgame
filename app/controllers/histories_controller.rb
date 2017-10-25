# frozen_string_literal: true
class HistoriesController < ApplicationController
  before_action :require_content, only: [:create]
  def index
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
    return unless @history.save
    set_current_experience(@history.experience)
    redirect_to next_contents_path,
                notice: @history.content.type == 'Video' ? nil : "Você ganhou #{@history.experience} pontos de experiência!"
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
    if params[:contents][:answers_attributes].present?
      params[:contents][:answers_attributes] = params[:contents][:answers_attributes].map do |t|
        { question_id: t.first, alternative_id: t.last }
      end
    else
      params[:contents][:answers_attributes] = nil
    end

    params.require(:contents).permit(:content_id,
                                     answers_attributes: [
                                       :question_id,
                                       :alternative_id
                                     ])
  end
end
