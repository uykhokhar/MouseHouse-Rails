class Api::V1::MouseRacksController < Api::V1::ApiController
  before_filter :set_mouse_racks
  
  # GET /mouse_racks
  # GET /mouse_racks.json
  def index
    
    respond_to do |format|
      format.json { render json: @mouse_racks }
    end
  end

  # GET /mouse_racks/1
  # GET /mouse_racks/1.json
  def show
    @mouse_rack = @mouse_racks.find(params[:id])

    respond_to do |format|
      format.json { render json: @mouse_rack }
    end
  end

  # POST /mouse_racks
  # POST /mouse_racks.json
  def create
    @mouse_rack = @mouse_racks.new(params[:mouse_rack])

    respond_to do |format|
      if @mouse_rack.save
        format.json { render json: @mouse_rack, status: :created }
      else
        format.json { render json: @mouse_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mouse_racks/1
  # PUT /mouse_racks/1.json
  def update
    @mouse_rack =  @mouse_racks.find(params[:id])
    respond_to do |format|
      if @mouse_rack.update_attributes(params[:mouse_rack])
        format.json { render json: @mouse_rack }
      else
        format.json { render json: @mouse_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mouse_racks/1
  # DELETE /mouse_racks/1.json
  def destroy
    @mouse_rack = @mouse_racks.find(params[:id])
    @mouse_rack.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
  protected
    def set_mouse_racks
      @mouse_racks = current_user.mouse_racks
    end
end
