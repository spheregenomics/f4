class CoursesController < ApplicationController
  before_filter :get_lookups, :only => [:show]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
 # def show
 #   @course = Course.find(params[:id])
  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.json do
  #      @course = Course.find(params[:id])
  #      @units = @course.units.all
  #      @unit_layouts = UnitLayout.where(:unit_id => @units)
  #      @layout_fields = LayoutField.where(:unit_layout_id => @unit_layouts)
  #      response = {:course => @course, :units => @units, :unit_layouts => @unit_layouts, :layout_fields => @layout_fields}
  #      respond_to do |format|
  #        format.json {render :json => response }
  #      end
  #    end
  #  end
#  end
  
  def show
    @course = Course.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json do
        render :json => @course.to_json(:include => { :units => { :include => {:lessons => {:include => { :lesson_layouts => { :include => [:layout_fields, :layout_tables]}}}}}})
      end
    end
  end

 
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

 
  def edit
    @course = Course.find(params[:id])
  end


  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
  
  def json_dump
    @course = Course.find(params[:id])
    @units = Unit.all
    response = {:course => @course, :units => @units }
    respond_to do |format|
      format.json {render :json => response }
    end
  end
  
  private
  def get_lookups
     @course = Course.find(params[:id])
     @course_type = Lookup.find(@course.course_type).lookup_text
     @status = Lookup.find(@course.status).lookup_text
     @language = Lookup.find(@course.course_language).lookup_text
     @target_level = Lookup.find(@course.target_level).lookup_text
  end
 
  
  
end
