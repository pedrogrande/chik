class HomeController < ApplicationController
	layout 'home'
  def index
    @content_item = ContentItem.first
    @event = Event.future.first
    @background_images = BackgroundImage.active
    @buy_actions = BuyAction.active
    @involvement_actions = InvolvementAction.active
    @enquiry = Enquiry.new
  end
end
