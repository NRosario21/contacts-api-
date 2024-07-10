class ContactsController < ApplicationController
  def one_contact
    contact = Contact.first
    render json: { id: contact.id, first_name: contact.first_name, last_name: contact.last_name }
  end

  def all_contacts
    contacts = Contact.all
    # render json: contacts
    render json: [
             { id: contacts[0].id, first_name: contacts[0].first_name, last_name: contacts[0].last_name },
             { id: contacts[1].id, first_name: contacts[1].first_name, last_name: contacts[1].last_name },
             { id: contacts[2].id, first_name: contacts[2].first_name, last_name: contacts[2].last_name },
           ]
  end
end
