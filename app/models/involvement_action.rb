class InvolvementAction < ActiveRecord::Base
	default_scope order: 'involvement_actions.priority ASC'
	
	def self.active
		InvolvementAction.where('priority > ?', 0)
	end
end
