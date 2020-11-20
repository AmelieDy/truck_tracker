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

  private
   # set permit parameters
  def truck_params
    params.require(:message).permit(:name,
                                    :category,
                                    :city,
                                    :zip_code,
                                    :street_address,
                                    :country,
                                    :description,
                                    :image,
                                    :saved,
                                    :email,
                                    :state,
                                    :phone)
  end
end
