class PagesController < ApplicationController
  def home
    @message = Message.new
    @houses = House.limit(6)
  end
end
