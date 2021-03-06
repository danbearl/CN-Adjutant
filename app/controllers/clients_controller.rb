class ClientsController < ApplicationController
  def index
    @clients = Client.all

    respond_to do |format|
      format.html #index.html.erb
      format.json { render :json => @clients }
    end
  end

  def new
    @client = Client.new

    respond_to do |format|
      format.html #index.html.erb
      format.json { render :json => @client }
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def show
    @client = Client.find(params[:id])


    respond_to do |format|
      format.html #index.html.erb
      format.json {render :json => @client }
    end
  end

  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => 'Client was successfully saved.') }
        format.json { render :json => @client, :status => :created, :location => :client }
      else
        format.html {render :action => "new"}
        format.json {render :json => @client.errors, :status => :unprocessable_entity}
      end
    end
  end

  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html {redirect_to(@client, :notice => "Client updated successfully.")}
        format.json {head :no_content}
      else
        format.html {render :action => "edit"}
        format.json {render :json => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @client = Client.find(params[:id])

    @client.destroy

    respond_to do |format|
      format.html { redirect_to clients_url}
      format.json { head :no_content }
    end
  end
end
