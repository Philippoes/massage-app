class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create

    city = City.find(params[:city][:city_id])

    @request = Request.new(description: request_params[:description], time: request_params[:time], city: city)
    #@request = Request.new(request_params)
    if @request.save
      flash[:notice] = "Förfrågan skapad"
      redirect_to(@request)
    else
      flash[:alert] = "Var vänlig fyll i alla fält"
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  private

  def request_params
    params.require(:request).permit(:description, :time, :city)
  end
end
