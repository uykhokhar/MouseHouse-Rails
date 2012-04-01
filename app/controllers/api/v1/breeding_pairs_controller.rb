class Api::V1::BreedingPairsController < Api::V1::ApiController
  before_filter :set_breeding_pair, :except => [:index, :create]
  # GET /breeding_pairs
  # GET /breeding_pairs.json
  def index
    @breeding_pairs = current_user.breeding_pairs.all

    respond_to do |format|
      format.json { render json: @breeding_pairs }
    end
  end

  # GET /breeding_pairs/1
  # GET /breeding_pairs/1.json
  def show
    @breeding_pair = BreedingPair.find(params[:id])

    respond_to do |format|
      format.json { render json: @breeding_pair }
    end
  end

  # POST /breeding_pairs
  # POST /breeding_pairs.json
  def create
    @breeding_pair = current_user.breeding_pair.new(params[:breeding_pair])

    respond_to do |format|
      if @breeding_pair.save
        format.json { render json: @breeding_pair, status: :created, location: @breeding_pair }
      else
        format.json { render json: @breeding_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /breeding_pairs/1
  # PUT /breeding_pairs/1.json
  def update
    respond_to do |format|
      if @breeding_pair.update_attributes(params[:breeding_pair])
        format.json { head :no_content }
      else
        format.json { render json: @breeding_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breeding_pairs/1
  # DELETE /breeding_pairs/1.json
  def destroy
    @breeding_pair.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
  
  protected
    def set_breeding_pair
      @breeding_pair = current_user.breeding_pair.find(params[:id])
    end
end
