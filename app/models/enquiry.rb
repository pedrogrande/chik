class Enquiry < ActiveRecord::Base
	validates_presence_of :name, :email, :message
	default_scope order: 'enquiries.created_at DESC'
end
