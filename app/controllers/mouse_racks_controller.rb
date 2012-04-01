class MouseRacksController < ApplicationController
  # GET /mouse_racks
  # GET /mouse_racks.json
  def index
    @mouse_racks = MouseRack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mouse_racks }
    end
  end

  # GET /mouse_racks/1
  # GET /mouse_racks/1.json
  def show
    @mouse_rack = MouseRack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mouse_rack }
    end
  end

  # GET /mouse_racks/new
  # GET /mouse_racks/new.json
  def new
    @mouse_rack = MouseRack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mouse_rack }
    end
  end

  # GET /mouse_racks/1/edit
  def edit
    @mouse_rack = MouseRack.find(params[:id])
  end

  # POST /mouse_racks
  # POST /mouse_racks.json
  def create
    @mouse_rack = MouseRack.new(params[:mouse_rack])

    respond_to do |format|
      if @mouse_rack.save
        format.html { redirect_to @mouse_rack, notice: 'Mouse rack was successfully created.' }
        format.json { render json: @mouse_rack, status: :created, location: @mouse_rack }
      else
        format.html { render action: "new" }
        format.json { render json: @mouse_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mouse_racks/1
  # PUT /mouse_racks/1.json
  def update
    @mouse_rack = MouseRack.find(params[:id])

    respond_to do |format|
      if @mouse_rack.update_attributes(params[:mouse_rack])
        format.html { redirect_to @mouse_rack, notice: 'Mouse rack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mouse_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mouse_racks/1
  # DELETE /mouse_racks/1.json
  def destroy
    @mouse_rack = MouseRack.find(params[:id])
    @mouse_rack.destroy

    respond_to do |format|
      format.html { redirect_to mouse_racks_url }
      format.json { head :no_content }
    end
  end
end
