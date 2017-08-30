class ServiceMenController < ApplicationController
def index
    @serviceMen = ServiceMan.all
  end
 
  def show
    @serviceMan = ServiceMan.find(params[:id])

  end
 
  def new
    @serviceMan = ServiceMan.new
  end
 
  def edit
    @serviceMan = ServiceMan.find(params[:id])
  end
 
  def create
    @serviceMan = ServiceMan.new(service_man_params)
 
    if @serviceMan.save
      redirect_to @serviceMan
    else
      render 'new'
    end
  end
 
  def update
    @serviceMan = ServiceMan.find(params[:id])
 
    if @serviceMan.update(service_man_params)
      redirect_to @serviceMan
    else
      render 'edit'
    end
  end

  def find_nearby_location
    @serviceMan = ServiceMan.find(params[:id])
    lat = @serviceMan.latitude
    long =@serviceMan.longitude

    @locations = ServiceMan.near([lat,long],20)
    puts @locations
  end
 
  def destroy
    @serviceMan = ServiceMan.find(params[:id])
    @serviceMan.destroy
 
    redirect_to serviceMen_path
  end
 
  private
    def service_man_params
      params.require(:service_man).permit(:fName, :lName, :age, :contact1, :contact2, :address, :zipcode, :city, :state, :country)
    end

end
