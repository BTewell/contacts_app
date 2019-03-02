class Api::ContactsController < ApplicationController
  def first_contact
    @contact = Contact.first
    render 'contact.json.jbuilder'
  end
end