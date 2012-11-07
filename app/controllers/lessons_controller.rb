class LessonsController < ApplicationController
    before_filter :find_unit
    before_filter :find_lesson, :only => [:show, :edit, :update, :destroy]
    before_filter :get_lookups, :only => [:show]
    before_filter :authenticate_user!
  

    def new
      @lesson = @unit.lessons.build
    end

    def create
      @lesson = @unit.lessons.build(params[:lesson])
      if @lesson.save
        flash[:notice] = "Lesson has been created."
        redirect_to [@unit, @lesson]
      else
        flash[:alert] = "Lesson could not be created."
        render :actions => "new"
      end
    end

    def show
    end

    def update
       respond_to do |format|
         if @lesson.update_attributes(params[:lesson])
           format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
           format.json { head :no_content }
         else
           format.html { render action: "edit" }
           format.json { render json: @lesson.errors, status: :unprocessable_entity }
         end
       end
     end


    def destroy
      @lesson = Lesson.find(params[:id])
      @lesson.destroy
      redirect_to [@unit]
    end

    private
    def find_unit
      if(params[:unit_id].nil?)
        @lesson = Lesson.find(params[:id])
        @unit = Unit.find(@lesson.unit_id)
      else
        @unit = Unit.find(params[:unit_id])
      end  
    end

    def find_lesson
      @lesson = @unit.lessons.find(params[:id])
    end

    def get_lookups
      @lesson_status = Lookup.where(:id => @lesson.status).pluck(:lookup_text)[0]
      @lesson_type = Lookup.where(:id => @lesson.lesson_type).pluck(:lookup_text)[0]
    end
  end
 