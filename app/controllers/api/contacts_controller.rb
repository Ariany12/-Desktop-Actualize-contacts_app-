class Api::ContactsController < ApplicationController
    def index
      @contact = Contact.all
      render 'index.json.jb'
    end

    def show
      id = params[:id] #get the id for the url
      @contact = Contact.find_by(id: id) #go in db and  find the particular product for this id
      render 'show.json.jb'
    end

    def create
      @contacts = Contact.new(
        first_name: params[:first_name],
        last_name: params[:last_name],
        phone_number: params[:phone_number],
    )
      @contacts.save
      render 'create.json.jb'
   end

   def update
    id = params[:id] 
    @contact = Contact.find_by(id: id) 
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contacts.last_name
    @contact.phone_number = params[:phone_number] || @contacts.phone_number
    
    @contact.save

    render 'show.json.jb'
   end

   def destroy
    id = params[:id] 
    @contact = Contact.find_by(id: id) 
    @contact.destroy

    render 'destroy.json.jb'
   end
  
 end
