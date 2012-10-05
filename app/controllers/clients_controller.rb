class ClientsController < ApplicationController

  expose(:client) { Client.find(params[:id]) }
  expose(:clients) { Client.all }
  expose(:projects) { client.projects }

  def create
    if client.save
      redirect_to client, notice: 'Client was successfully saved.'
    else
      render 'new'
    end
  end

  def update
    if client.save
      redirect_to client, notice: "Client updated successfully."
    else
      render action: "edit"
    end
  end

  def destroy
    client.destroy
    redirect_to clients_path
  end

end
