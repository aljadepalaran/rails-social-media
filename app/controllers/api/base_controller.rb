class Api::BaseController < ApplicationController
  before_action :authenticate_request

  def authenticate_request
    render :json => forbidden_json if params[:api_key] != 'password'
  end

  def forbidden_json
    { status: 403, message: 'Forbidden Request' }
  end
end