class Api::V1::BlogsController < Api::BaseController
  def index
    render json: { model: 'blogs' }
  end

  def show
    render json: { model: 'blog' }
  end
end
