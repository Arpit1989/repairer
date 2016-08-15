class DemandHelp < ApplicationMailer
  def send_contact_details user
      @user = user
      mail(to: "demand4help@gmail.com",cc: ["speak2arpit@gmail.com,sahilsofa@gmail.com,asharik953@gmail.com"], subject: "Service required by: "+@user[:phone_number])
  end
end
