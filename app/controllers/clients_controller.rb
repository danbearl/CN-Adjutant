class ClientsController < ApplicationController
  def index
    @clients = Client.all

    respond_to do |format|
      format.html #index.html.erb
      format.json { render :json => @posts }
    end
  end

  def new
  end

  def edit
  end

  def show
  end
end
