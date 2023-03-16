class HelloWorldController < ApplicationController
  def index
    render json: { message: 'Hello Mundo!' }
  end
end
