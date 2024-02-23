class V1::ContactsController < ApplicationController
    def index
        @contacts = current_user.contacts

        render json: @contacts, status: :ok
    end

    def create
        @contact = Conatct.new(contact_params)

        @contact.save
        render json: @contacts, status: :created
    end

    def destroy
        @contact = current_user.contacts.where(id: params[:id]).first
        if @contact.destroy
            head(:ok)

        else
            head(:unprocessable_entity)
        end
    end

    private

    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :email)
    end
end
