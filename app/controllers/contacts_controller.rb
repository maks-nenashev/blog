class ContactsController < ApplicationController
       
    def new  #создать - new (отобразить форму. GET)
       @contact = Contact.new 
    end
  
           
    def create  #create (отправить форму. POST)   
       @contact = Contact.new(contact_params)
    if @contact.valid?  # walidacija
       @contact.save
    else
       render action: 'new' # Esli forma ne walidna to idet wozwrat na stranicu "new"
      end
    end
    
    private
  
    def contact_params
      params.require(:contact).permit(:email,:text)
    end
    
end