class Api::V1::CagesController < Api::V1::ApiController
  before_filter :set_cage, :except => [:index, :create]
  
  # GET /cages
  # GET /cages.json
  def index
    @cages = current_user.cages

    respond_to do |format|
      format.json { render json: @cages }
    end
  end

  # GET /cages/1
  # GET /cages/1.json
  def show

    respond_to do |format|
      format.json { render json: @cage }
    end
  end

  # POST /cages
  # POST /cages.json
  def create
    @cage = current_user.cages.new(params[:cage])

    respond_to do |format|
      if @cage.save
        format.json { render json: @cage, status: :created, location: @cage }
      else
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cages/1
  # PUT /cages/1.json
  def update
    
    respond_to do |format|
      if @cage.update_attributes(params[:cage])
        format.json { head :no_content }
      else
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cages/1
  # DELETE /cages/1.json
  def destroy
    @cage.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
  
  protected
    def set_cage
      @cage = current_user.cages.find(params[:id])
    end
end
