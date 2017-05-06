class RequestsController < ApplicationController
  def new
  end

  def create
    request = Request.new(request_params)
    if request.save
      flash[:notice] = "Förfrågan skapad"
      redirect_to(requests_show_path)
    else
      flash[:alert] = "Var vänlig fyll i alla fält"
    end
  end

  def show
  end

  private
  def request_params
    params.require(:request).permit(:description, :time, :area)
  end
end
