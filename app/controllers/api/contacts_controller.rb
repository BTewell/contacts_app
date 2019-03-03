class Api::ContactsController < ApplicationController
  def first_contact
    @contact = Contact.first
    render 'contact.json.jbuilder'
  end
  def all_contact
    @contacts = Contact.all
    render 'every_contact.json.jbuilder'
  end
end