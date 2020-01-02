class PageController < ApplicationController
  def home
  end
  def contact
    @contact = Contact.new
  end
end
