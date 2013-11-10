class AdminController < ApplicationController
	layout 'layouts/admin'
  def index
  	@content_item = ContentItem.first
  end
end
