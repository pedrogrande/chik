class EnquiryMailer < ActionMailer::Base
  default from: "thechikukwaproject@gmail.com"

  def enquiry_received(enquiry)
  	@enquiry = enquiry
  	subject = "Enquiry received: " + @enquiry.enquiry_type
  	mail(:to => "gillian.leahy@uts.edu.au", :subject => "Enquiry Received")
  end

  def enquiry_response(enquiry)
  	@enquiry = enquiry
  	mail(:to => @enquiry.email, :subject => "Your enquiry has been received")
  end
end
