class Api::V1::CagesController < Api::V1::ApiController
  before_filter :set_cage, :except => :index

  def index
    @cages = current_user.cages
    render json: @cages
  end

  protected
    def set_cage
      @cage = current_user.cages.find(params[:id])
    end
end