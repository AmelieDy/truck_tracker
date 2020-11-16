class TrucksController < ApplicationController

  def index
    # if params[:category].present?
    #
    # else
    #   @trucks = Truck.all.where(category: params[:category])
    # end
    @categories = Truck.all.group(:category)
    if request.xhr?
      @trucks = Truck.all.where(category: params[:category])
      puts 'hhhhhhhhhhhhhhhhh'
      puts params
    else
      @trucks = Truck.all
    end
  end
end
