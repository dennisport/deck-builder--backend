class Api::V1::CardsController < ApplicationController
  skip_before_action :verify_authenticity_token
    def index
      @cards = Card.all
      render json: @cards
    end

    def show
     @card = Card.find_by_id(params[:id])
     render json: @card
    end

    def new
      @card = Card.new
    end
  end