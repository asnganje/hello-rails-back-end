class Api::GreetingsController < ApplicationController
  def index
    @greet = Greeting.order('RANDOM()').limit(1).first
    render json: { message: @greet.message }
  end
end
