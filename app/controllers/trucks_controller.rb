class TrucksController < ApplicationController

  def index
    # group by categories
    @categories = Truck.all.group(:category)
    # at the first load, load all trucks
    # if a category is selected through view, we will get xhr response
    if request.xhr?
      @trucks = Truck.all.where(category: params[:category])
    else
      @trucks = Truck.all
    end
  end
end
