class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new request_params
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

  def index
    @requests = Request.all
  end

  private

  def request_params
    params.require(:request).permit(:description, :time)
  end
end
