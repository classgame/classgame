# frozen_string_literal: true
class AlternativesController < ApplicationController
  before_action :set_alternative, only: [:show, :edit, :update, :destroy]

  def index
    @alternatives = Alternative.all
  end

  def show
  end

  def new
    @alternative = Alternative.new
  end

  def edit
  end

  def create
    @alternative = Alternative.new(alternative_params)

    respond_to do |format|
      if @alternative.save
        format.html { redirect_to @alternative, notice: 'Alternative was successfully created.' }
        format.json { render :show, status: :created, location: @alternative }
      else
        format.html { render :new }
        format.json { render json: @alternative.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @alternative.update(alternative_params)
        format.html { redirect_to @alternative, notice: 'Alternative was successfully updated.' }
        format.json { render :show, status: :ok, location: @alternative }
      else
        format.html { render :edit }
        format.json { render json: @alternative.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @alternative.destroy
    respond_to do |format|
      format.html { redirect_to alternatives_url, notice: 'Alternative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_alternative
    @alternative = Alternative.find(params[:id])
  end

  def alternative_params
    params.require(:alternative).permit(:description, :correct)
  end
end
