class MediaCatagoriesController < ApplicationController
  # GET /media_catagories
  # GET /media_catagories.json
  def index
    @media_catagories = MediaCatagory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @media_catagories }
    end
  end

  # GET /media_catagories/1
  # GET /media_catagories/1.json
  def show
    @media_catagory = MediaCatagory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @media_catagory }
    end
  end

  # GET /media_catagories/new
  # GET /media_catagories/new.json
  def new
    @media_catagory = MediaCatagory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @media_catagory }
    end
  end

  # GET /media_catagories/1/edit
  def edit
    @media_catagory = MediaCatagory.find(params[:id])
  end

  # POST /media_catagories
  # POST /media_catagories.json
  def create
    @media_catagory = MediaCatagory.new(params[:media_catagory])

    respond_to do |format|
      if @media_catagory.save
        format.html { redirect_to @media_catagory, notice: 'Media catagory was successfully created.' }
        format.json { render json: @media_catagory, status: :created, location: @media_catagory }
      else
        format.html { render action: "new" }
        format.json { render json: @media_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /media_catagories/1
  # PUT /media_catagories/1.json
  def update
    @media_catagory = MediaCatagory.find(params[:id])

    respond_to do |format|
      if @media_catagory.update_attributes(params[:media_catagory])
        format.html { redirect_to @media_catagory, notice: 'Media catagory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @media_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_catagories/1
  # DELETE /media_catagories/1.json
  def destroy
    @media_catagory = MediaCatagory.find(params[:id])
    @media_catagory.destroy

    respond_to do |format|
      format.html { redirect_to media_catagories_url }
      format.json { head :no_content }
    end
  end
end
