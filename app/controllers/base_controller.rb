class BaseController < ApplicationController
  def example
    render html: 'hello'
  end
end
