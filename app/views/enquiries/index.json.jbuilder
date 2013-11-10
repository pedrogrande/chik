json.array!(@enquiries) do |enquiry|
  json.extract! enquiry, :name, :email, :phone, :enquiry_type, :message
  json.url enquiry_url(enquiry, format: :json)
end
