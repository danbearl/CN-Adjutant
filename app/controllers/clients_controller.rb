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
  end

  def show
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
end
