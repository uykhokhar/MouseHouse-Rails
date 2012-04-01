class LittersController < ApplicationController
  # GET /litters
  # GET /litters.json
  def index
    @litters = Litter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @litters }
    end
  end

  # GET /litters/1
  # GET /litters/1.json
  def show
    @litter = Litter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @litter }
    end
  end

  # GET /litters/new
  # GET /litters/new.json
  def new
    @litter = Litter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @litter }
    end
  end

  # GET /litters/1/edit
  def edit
    @litter = Litter.find(params[:id])
  end

  # POST /litters
  # POST /litters.json
  def create
    @litter = Litter.new(params[:litter])

    respond_to do |format|
      if @litter.save
        format.html { redirect_to @litter, notice: 'Litter was successfully created.' }
        format.json { render json: @litter, status: :created, location: @litter }
      else
        format.html { render action: "new" }
        format.json { render json: @litter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /litters/1
  # PUT /litters/1.json
  def update
    @litter = Litter.find(params[:id])

    respond_to do |format|
      if @litter.update_attributes(params[:litter])
        format.html { redirect_to @litter, notice: 'Litter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @litter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /litters/1
  # DELETE /litters/1.json
  def destroy
    @litter = Litter.find(params[:id])
    @litter.destroy

    respond_to do |format|
      format.html { redirect_to litters_url }
      format.json { head :no_content }
    end
  end
end
