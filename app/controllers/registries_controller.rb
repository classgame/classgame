# frozen_string_literal: true
class RegistriesController < ApplicationController
  before_action :set_registry, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.includes(:performance).order('performances.total_experience desc').limit(10)

    @courses = current_user.courses.each do |course|
      chapters = course.chapters.pluck(:id)
      contents_completed = current_user.contents.where(chapter: chapters).distinct.count
      contents = Content.where(chapter: chapters).count
      progress_percentage = contents_completed.to_f / contents.to_f * 100
      course.progress_percentage = progress_percentage
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
