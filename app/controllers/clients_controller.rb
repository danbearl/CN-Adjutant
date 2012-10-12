class ClientsController < ApplicationController
  expose(:clients)
  expose(:client)
  expose(:projects) { client.projects }
  def create
    if client.save
      redirect_to client, notice: 'Client successfully created.'
    else
      render 'new'
    end
  end

  def update
    if client.save
      redirect_to client, notice: "Client successfully updated."
    else
      render action: "edit"
    end
  end

  def destroy
    client.destroy
    redirect_to clients_path, notice: "Client successfully deleted."
  end
end
