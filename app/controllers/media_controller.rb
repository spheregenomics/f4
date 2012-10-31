class MediaController < ApplicationController
  before_filter :find_media_catagory
  before_filter :find_media, :only => [:show, :edit, :update, :destroy]
  
  def new
    @media = @media_catagory.media.build
  end
  
  def create
    @media = @media_catagory.media.build(params[:media])
    if @media.save
      flash[:notice] = "Media has been created."
      redirect_to [@media_catagory, @media]
    else
      flash[:alert] = "Unit could not be created."
      render :actions => "new"
    end
  end
  
  def show
  end
  
  def update
     respond_to do |format|
       if @unit.update_attributes(params[:media])
         format.html { redirect_to @media, notice: 'Media was successfully updated.' }
         format.json { head :no_content }
       else
         format.html { render action: "edit" }
         format.json { render json: @media.errors, status: :unprocessable_entity }
       end
     end
   end
  
  
  def destroy
    @media = Media.find(params[:id])
    @media.destroy
    redirect_to [@media_catagory]
  end
  
  private
  def find_media_catagory
    if(params[:media_catagory_id].nil?)
      @media = Media.find(params[:id])
      @media_catagory = MediaCatagory.find(@media.media_catagory_id)
    else
      @media_catagory = MediaCatagory.find(params[:media_catagory_id])
    end  
  end
  
  def find_media
    @media = @media_catagory.media.find(params[:id])
  end
end
