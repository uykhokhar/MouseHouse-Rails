class CagesController < ApplicationController
  # GET /cages
  # GET /cages.json
  def index
    @cages = Cage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cages }
    end
  end

  # GET /cages/1
  # GET /cages/1.json
  def show
    @cage = Cage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cage }
    end
  end

  # GET /cages/new
  # GET /cages/new.json
  def new
    @cage = Cage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cage }
    end
  end

  # GET /cages/1/edit
  def edit
    @cage = Cage.find(params[:id])
  end

  # POST /cages
  # POST /cages.json
  def create
    @cage = Cage.new(params[:cage])

    respond_to do |format|
      if @cage.save
        format.html { redirect_to @cage, notice: 'Cage was successfully created.' }
        format.json { render json: @cage, status: :created, location: @cage }
      else
        format.html { render action: "new" }
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cages/1
  # PUT /cages/1.json
  def update
    @cage = Cage.find(params[:id])

    respond_to do |format|
      if @cage.update_attributes(params[:cage])
        format.html { redirect_to @cage, notice: 'Cage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cages/1
  # DELETE /cages/1.json
  def destroy
    @cage = Cage.find(params[:id])
    @cage.destroy

    respond_to do |format|
      format.html { redirect_to cages_url }
      format.json { head :no_content }
    end
  end
end
