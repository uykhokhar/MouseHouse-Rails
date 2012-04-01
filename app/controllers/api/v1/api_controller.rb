class Api::V1::ApiController < ApplicationController
  skip_before_filter :protect_from_forgery
  before_filter :verify_api_key
  before_filter :authenticate_user!
  
  def verify_api_key
    if request.headers['X-MouseHouse-API-Key'] != 'taco'
  			head :bad_request
  			false
  		else
  			true
  		end
  end

end
