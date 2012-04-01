class MiceController < ApplicationController
  # GET /mice
  # GET /mice.json
  def index
    @mice = Mouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mice }
    end
  end

  # GET /mice/1
  # GET /mice/1.json
  def show
    @mouse = Mouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mouse }
    end
  end

  # GET /mice/new
  # GET /mice/new.json
  def new
    @mouse = Mouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mouse }
    end
  end

  # GET /mice/1/edit
  def edit
    @mouse = Mouse.find(params[:id])
  end

  # POST /mice
  # POST /mice.json
  def create
    @mouse = Mouse.new(params[:mouse])

    respond_to do |format|
      if @mouse.save
        format.html { redirect_to @mouse, notice: 'Mouse was successfully created.' }
        format.json { render json: @mouse, status: :created, location: @mouse }
      else
        format.html { render action: "new" }
        format.json { render json: @mouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mice/1
  # PUT /mice/1.json
  def update
    @mouse = Mouse.find(params[:id])

    respond_to do |format|
      if @mouse.update_attributes(params[:mouse])
        format.html { redirect_to @mouse, notice: 'Mouse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mice/1
  # DELETE /mice/1.json
  def destroy
    @mouse = Mouse.find(params[:id])
    @mouse.destroy

    respond_to do |format|
      format.html { redirect_to mice_url }
      format.json { head :no_content }
    end
  end
end
