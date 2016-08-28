class WelcomeController < ApplicationController
  def index
    if (params[:phone_number] != nil)
      begin
        DemandHelp.send_contact_details(params).deliver_now!
        respond_to do |format|
          format.html { redirect_to root_path, flash: {success: "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong> We have received your request.Our People will soon get in touch with you.Thank you for using demand for help!.</div><script>$(document).ready(function(){$('.modal').modal('hide');});</script>".html_safe}}
          format.js   { redirect_to root_path, flash: {success: "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong> We have received your request.Our People will soon get in touch with you.Thank you for using demand for help!.</div><script>$(document).ready(function(){$('.modal').modal('hide');});</script>".html_safe}}
        end
      rescue Exception => e
        respond_to do |format|
          format.html { redirect_to root_path, flash:{ error: "<div class='alert alert-danger'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a> <strong>Some error!</strong> while Processing Request. Please call <strong> +91- 98 99 362008<strong></div><script>$(document).ready(function(){$('.modal').modal('hide');});</script>".html_safe }}
          format.js   { redirect_to root_path, flash:{ error: "<div class='alert alert-danger'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a> <strong>Some error!</strong> while Processing Request. Please call <strong> +91- 98 99 362008<strong></div><script>$(document).ready(function(){$('.modal').modal('hide');});</script>".html_safe }}
        end
      end
    end
  end
end
