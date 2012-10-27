class UnitsController < ApplicationController
  before_filter :find_course
  before_filter :find_unit, :only => [:show, :edit, :update, :destroy]
  before_filter :get_lookups, :only => [:show]
  
  def new
    @unit = @course.units.build
  end
  
  def create
    @unit = @course.units.build(params[:unit])
    if @unit.save
      flash[:notice] = "Unit has been created."
      redirect_to [@course, @unit]
    else
      flash[:alert] = "Unit could not be created."
      render :actions => "new"
    end
  end
  
  def show
  end
  
  def update
     respond_to do |format|
       if @unit.update_attributes(params[:unit])
         format.html { redirect_to @unit, notice: 'Unit was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: "edit" }
         format.json { render json: @unit.errors, status: :unprocessable_entity }
       end
     end
   end
  
  
  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    redirect_to [@course]
  end
  
  private
  def find_course
    if(params[:course_id].nil?)
      @unit = Unit.find(params[:id])
      @course = Course.find(@unit.course_id)
    else
      @course = Course.find(params[:course_id])
    end  
  end
  
  def find_unit
    @unit = @course.units.find(params[:id])
  end
  
  def get_lookups
    @unit_status = Lookup.where(:id => @unit.status).pluck(:lookup_text)[0]
    @unit_type = Lookup.where(:id => @unit.unit_type).pluck(:lookup_text)[0]
  end
end
