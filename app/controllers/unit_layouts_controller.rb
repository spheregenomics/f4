class UnitLayoutsController < ApplicationController
  before_filter :find_unit
  before_filter :find_unit_layout, :only => [:show, :edit, :update, :destroy]
  before_filter :get_lookups, :only => [:show]
  before_filter :authenticate_user!
  
  def new
    @unit_layout = @unit.unit_layouts.build
  end
  
  def create
    @unit_layout = @unit.unit_layouts.build(params[:unit_layout])
    if @unit_layout.save
      flash[:notice] = "Unit Layout has been created."
      redirect_to [@unit, @unit_layout]
    else
      flash[:alert] = "Unit Layout could not be created."
      render :actions => "new"
    end
  end
  
  def show
  end
  
  def update
     respond_to do |format|
       if @unit_layout.update_attributes(params[:unit_layout])
         format.html { redirect_to @unit_unit_layout, notice: 'Unit Layout was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: "edit" }
         format.json { render json: @unit_layout.errors, status: :unprocessable_entity }
       end
     end
   end
  
  def destroy
     @unit_layout = UnitLayout.find(params[:id])
     @unit_layout.destroy
     redirect_to [@unit]
   end
  
  private
  def find_unit
    if(params[:unit_id].nil?)
      @unit_layout = UnitLayout.find(params[:id])
      @unit = Unit.find(@unit_layout.unit_id)
    else
      @unit = Unit.find(params[:unit_id])
    end
  end
  
  def find_unit_layout
    @unit_layout = @unit.unit_layouts.find(params[:id])
  end
  
  private
  def get_lookups
    @device_type = Lookup.where(:id => @unit_layout.device_type).pluck(:lookup_text)[0]
    @layout_type = Lookup.where(:id => @unit_layout.layout_type).pluck(:lookup_text)[0]
  end
  
  
end
