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
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      address: params[:address],
      phone: params[:phone],
      email: params[:email],
      bio: params[:email]
      )
    @contact.save
    render 'show.json.jbuilder'
  end

  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.address = params[:address] || @contact.address
    @contact.phone = params[:phone] || @contact.phone
    @contact.email = params[:email] || @contact.email
    @contact.bio = params[:bio] ||@contact.bio
    @contact.save
    render 'show.json.jbuilder'
  end
  
  def destroy
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.destroy
    render 'destroy.json.jbuilder'
  end
end