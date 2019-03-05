class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end
  def show
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    render 'show.json.jbuilder'
  end
  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      address: params[:address],
      phone: params[:phone],
      email: params[:email]
      )
    @contact.save
    render 'show.json.jbuilder'
  end
  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.first_name = params[:first_name],
    @contact.last_name
    render 'show.json.jbuilder'
  end
end