class LessonLayoutsController < ApplicationController
  before_filter :find_lesson
  before_filter :find_lesson_layout, :only => [:show, :edit, :update, :destroy]
  before_filter :get_lookups, :only => [:show]
  before_filter :authenticate_user!
  
  def new
    @lesson_layout = @lesson.lesson_layouts.build
  end
  
  def create
    @lesson_layout = @lesson.lesson_layouts.build(params[:lesson_layout])
    if @lesson_layout.save
      flash[:notice] = "Lesson Layout has been created."
      redirect_to [@lesson, @lesson_layout]
    else
      flash[:alert] = "Lesson Layout could not be created."
      render :actions => "new"
    end
  end
  
  def show
  end
  
  def update
     respond_to do |format|
       if @lesson_layout.update_attributes(params[:lesson_layout])
         format.html { redirect_to @lesson_lesson_layout, notice: 'Lesson Layout was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: "edit" }
         format.json { render json: @lesson_layout.errors, status: :unprocessable_entity }
       end
     end
   end
  
  def destroy
     @lesson_layout = LessonLayout.find(params[:id])
     @lesson_layout.destroy
     redirect_to [@lesson]
   end
  
  private
  def find_lesson
    if(params[:lesson_id].nil?)
      @lesson_layout = LessonLayout.find(params[:id])
      @lesson = Lesson.find(@lesson_layout.lesson_id)
    else
      @lesson = Lesson.find(params[:lesson_id])
    end
  end
  
  def find_lesson_layout
    @lesson_layout = @lesson.lesson_layouts.find(params[:id])
  end
  
  private
  def get_lookups
    @device_type = Lookup.where(:id => @lesson_layout.device_type).pluck(:lookup_text)[0]
    @layout_type = Lookup.where(:id => @lesson_layout.layout_type).pluck(:lookup_text)[0]
  end
end

