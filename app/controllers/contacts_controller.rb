class ContactsController < ApplicationController
  def new
  end

  def create
    Resend.api_key = Rails.application.credentials.resend_api_key

    Resend::Emails.send({
      "from" => "onboarding@resend.dev",
      "to" => "ccacereszuniga3348@gmail.com",
      "subject" => "New Contact Form Submission",
      "html" => "<p><strong>Name:</strong> #{params[:name]}</p>
                 <p><strong>Email:</strong> #{params[:email]}</p>
                 <p><strong>Message:</strong> #{params[:message]}</p>"
    })

    redirect_to root_path, notice: "Thanks! We'll get back to you soon."
  end
end
