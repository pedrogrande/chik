class AdminController < ApplicationController
	layout 'layouts/admin'
	before_filter :authenticate_user!
  def index
  	@content_item = ContentItem.first
  	@background_images = BackgroundImage.all
  	@events = Event.all
  	@buy_actions = BuyAction.all
  	@involvement_actions = InvolvementAction.all
  	@users = User.all
  end
end
