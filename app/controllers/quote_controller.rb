class QuoteController < ApplicationController
  def index
    if params[:search].present?
      @quotes = Quote.all.where("message ILIKE ?", "%#{search}%")
    else
      @quotes = Quote.all
    end
  end

  def search
    @quotes = Quote.search(params[:search])
  end

end
