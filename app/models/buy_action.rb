class BuyAction < ActiveRecord::Base
	default_scope order: 'buy_actions.priority ASC'
	
	def self.active
		BuyAction.where('priority > ?', 0)
	end
end
