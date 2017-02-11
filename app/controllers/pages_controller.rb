class PagesController < ApplicationController
  def home
    @houses = House.limit(6)
  end
end
