class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end
  def show
      #find the cheese for the specific id from the url
    cheese = Cheese.find_by(id: params[:id])
    # cheese = Cheese.find(params[:id])
      #send json response for the cheese
    render json: cheese
  end
end
