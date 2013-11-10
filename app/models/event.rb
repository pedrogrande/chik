class Event < ActiveRecord::Base
	def self.future
		Event.where("date >= ?", Date.today)
	end

	default_scope order: 'events.date ASC'
end
