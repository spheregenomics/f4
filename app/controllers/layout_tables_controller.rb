class LayoutTablesController < ApplicationController
  before_filter :find_lesson_layout
  before_filter :find_layout_table, :only => [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  
  # GET /layout_tables
  # GET /layout_tables.json
  def index
    @layout_tables = LayoutTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @layout_tables }
    end
  end

  # GET /layout_tables/1
  # GET /layout_tables/1.json
  def show
    @layout_table = LayoutTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @layout_table }
    end
  end

  def new
    @layout_table = @lesson_layout.layout_tables.build
  end
  
  def create
    @layout_table = @lesson_layout.layout_tables.build(params[:layout_table])
    if @layout_table.save
      flash[:notice] = "Layout Table has been created."
      redirect_to [@lesson_layout, @layout_table]
    else
      flash[:alert] = "Layout Table could not be created."
      render :actions => "new"
    end
  end

  # GET /layout_tables/1/edit
  def edit
    @layout_table = LayoutTable.find(params[:id])
  end


  # PUT /layout_tables/1
  # PUT /layout_tables/1.json
  def update
    @layout_table = LayoutTable.find(params[:id])

    respond_to do |format|
      if @layout_table.update_attributes(params[:layout_table])
        format.html { redirect_to @layout_table, notice: 'Layout table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @layout_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /layout_tables/1
  # DELETE /layout_tables/1.json
  def destroy
    @layout_table = LayoutTable.find(params[:id])
    @layout_table.destroy

    respond_to do |format|
      format.html { redirect_to layout_tables_url }
      format.json { head :no_content }
    end
  end
  
  private
   def find_lesson_layout
     if(params[:lesson_layout_id].nil?)
       @layout_table = LayoutTable.find(params[:id])
       @lesson_layout = LessonLayout.find(@layout_table.lesson_layout_id)
     else
        @lesson_layout = LessonLayout.find(params[:lesson_layout_id])
     end
   end

   def find_layout_table
     @layout_table = @lesson_layout.layout_tables.find(params[:id])
   end
  
  
end
