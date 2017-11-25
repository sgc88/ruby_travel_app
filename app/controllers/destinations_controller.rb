class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
    render :index
  end

  def new
    @destination = Destination.new
    render :new
  end

  def create
    destination_params = params.require(:destination).permit(:location, :date, :budget, :organizer, :plans)
    destination = Destination.new(destination_params)
    if destination.save
      redirect_to destinations_path
    end
  end

  def show
    destination_id = params[:id]
    @destination = Destination.find_by_id(destination_id)
  end

  def edit
    destination_id = params[:id]
    @destination = Destination.find_by_id(destination_id)
  end
  def update
    destination_id = params[:id]
    destination = Destination.find_by_id(destination_id)
    destination.update_attributes(destination_params)
    redirect_to destinations_path
  end
  def destroy
    destination_id = params[:id]
    destination = Destination.find_by_id(destination_id)
    destination.destroy
    redirect_to destinations_path
  end

  private
  def destination_params
    params.require(:destination).permit(:location, :date, :budget, :organizer, :plans)
  end

end
