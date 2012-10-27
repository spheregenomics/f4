class LayoutFieldsController < ApplicationController
  before_filter :find_lesson_layout
  before_filter :find_layout_field, :only => [:show, :edit, :update, :destroy]
  
  # GET /layout_fields
  # GET /layout_fields.json
  def index
    @layout_fields = LayoutField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @layout_fields }
    end
  end

  # GET /layout_fields/1
  # GET /layout_fields/1.json
  def show
    @layout_field = LayoutField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @layout_field }
    end
  end

  
  def new
    @layout_field = @lesson_layout.layout_fields.build
  end
  
  def create
    @layout_field = @lesson_layout.layout_fields.build(params[:layout_field])
    if @layout_field.save
      flash[:notice] = "Layout Field has been created."
      redirect_to [@lesson_layout, @layout_field]
    else
      flash[:alert] = "Layout Field could not be created."
      render :actions => "new"
    end
  end

  # GET /layout_fields/1/edit
  def edit
    @layout_field = LayoutField.find(params[:id])
  end


  # PUT /layout_fields/1
  # PUT /layout_fields/1.json
  def update
    @layout_field = LayoutField.find(params[:id])

    respond_to do |format|
      if @layout_field.update_attributes(params[:layout_field])
        format.html { redirect_to @layout_field, notice: 'Layout field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @layout_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /layout_fields/1
  # DELETE /layout_fields/1.json
  def destroy
    @layout_field = LayoutField.find(params[:id])
    @layout_field.destroy
    redirect_to [@unit_layout]
  end
  
  
  private
  def find_lesson_layout
    if(params[:lesson_layout_id].nil?)
      @layout_field = LayoutField.find(params[:id])
      @lesson_layout = LessonLayout.find(@layout_field.lesson_layout_id)
    else
       @lesson_layout = LessonLayout.find(params[:lesson_layout_id])
    end
  end
      
  def find_layout_field
    @layout_field = @lesson_layout.layout_fields.find(params[:id])
  end 
end
