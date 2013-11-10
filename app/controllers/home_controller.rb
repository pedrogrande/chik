class HomeController < ApplicationController
  def index
    @content_item = ContentItem.first
  end
end
