class BreedingPairsController < ApplicationController
  # GET /breeding_pairs
  # GET /breeding_pairs.json
  def index
    @breeding_pairs = BreedingPair.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @breeding_pairs }
    end
  end

  # GET /breeding_pairs/1
  # GET /breeding_pairs/1.json
  def show
    @breeding_pair = BreedingPair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @breeding_pair }
    end
  end

  # GET /breeding_pairs/new
  # GET /breeding_pairs/new.json
  def new
    @breeding_pair = BreedingPair.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @breeding_pair }
    end
  end

  # GET /breeding_pairs/1/edit
  def edit
    @breeding_pair = BreedingPair.find(params[:id])
  end

  # POST /breeding_pairs
  # POST /breeding_pairs.json
  def create
    @breeding_pair = BreedingPair.new(params[:breeding_pair])

    respond_to do |format|
      if @breeding_pair.save
        format.html { redirect_to @breeding_pair, notice: 'Breeding pair was successfully created.' }
        format.json { render json: @breeding_pair, status: :created, location: @breeding_pair }
      else
        format.html { render action: "new" }
        format.json { render json: @breeding_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /breeding_pairs/1
  # PUT /breeding_pairs/1.json
  def update
    @breeding_pair = BreedingPair.find(params[:id])

    respond_to do |format|
      if @breeding_pair.update_attributes(params[:breeding_pair])
        format.html { redirect_to @breeding_pair, notice: 'Breeding pair was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @breeding_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breeding_pairs/1
  # DELETE /breeding_pairs/1.json
  def destroy
    @breeding_pair = BreedingPair.find(params[:id])
    @breeding_pair.destroy

    respond_to do |format|
      format.html { redirect_to breeding_pairs_url }
      format.json { head :no_content }
    end
  end
end
