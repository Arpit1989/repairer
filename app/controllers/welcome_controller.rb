class WelcomeController < ApplicationController
  def index
    if params[:phone_number] != nil
      DemandHelp.send_contact_details(params).deliver_now!
    end
  end
end
