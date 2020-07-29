class CardsController < ApplicationController
    def show
      @resp = Faraday.get 'https://db.ygoprodeck.com/api/v7/cardinfo.php'
      card_data = JSON.parse(@resp.body)
      cards  = card_data["data"]
      # @card = Card.find(params[:id])
    end
  end