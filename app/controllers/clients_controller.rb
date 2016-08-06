class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.first_name = @client.first_name.titleize
    @client.last_name = @client.last_name.titleize
    if @client.middle_name?
      @client.middle_name = @client.middle_name.titleize
    end
    if !@client.id_number?
      @client.government_id = ""
    end
    if @client.city?
      @client.city = @client.city.titleize
    end
    if @client.save
      redirect_to dashboard_path, alert: "Saved successfully!"
    else
      render 'new'
    end
  end

  def update
    @client = Client.find_by_id(params[:id])

    if @client.update(client_params)
      redirect_to @client
    else
      render 'edit'
    end
  end

  def destroy
    @client = Client.find_by_id(params[:id])
    if @client.delete
      redirect_to dashboard_path
    else
      render 'search'
    end
  end

  def delete
    @clients = Client.all
  end

  def index

  end

  def show
    @clients = Client.all
  end

  def edit
    @client = Client.find_by_id(params[:id])
  end

  private
    def client_params
      params.require(:client).permit(:first_name, :middle_name, :last_name, :company, :phone_number, :government_id, :id_number, :email_address, :home_address, :city, :country_code)
    end
end
