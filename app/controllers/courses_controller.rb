# frozen_string_literal: true
class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy, :chapters]
  before_action :authenticate_user!, except: :show

  def index
    @courses = Course.all
  end

  def registration
    time = Time.new.utc
    course = Course.find(params[:id])
    respond_to do |format|
      if current_user.courses.find_by(id: course.id)
        format.html { redirect_to registries_path, notice: 'Usuario ja cadastrado no curso!' }
        format.json { render :show, status: :created, location: @registry }
      else
        @registry = Registry.new(active: true, finished_course: false, limit_date: time + 20.days, user: current_user, course: course)
        if @registry.save
          format.html { redirect_to registries_path, notice: 'Inscrição feita com sucesso!' }
          format.json { render :show, status: :created, location: @registry }
        else
          format.html { render :index }
          format.json { render json: @registry.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def chapters
    @chapters = @course.chapters
  end

  def show
    @chapters = @course.chapters
  end

  def new
    @category = Category.all
    @course = Course.new
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description, :nivel, :workload, :active, :completed_edition, :category_id)
  end
end
