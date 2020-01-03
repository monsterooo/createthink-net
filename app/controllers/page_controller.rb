class PageController < ApplicationController
  def home
    @articles = Article.order(created_at: :desc).first(3)
  end
  def contact
    @contact = Contact.new
  end
end
