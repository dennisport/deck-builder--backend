class DecksController < ApplicationController
  skip_before_action :verify_authenticity_token
    def index
      @decks = Deck.all
      render json: @decks, include: :cards
    end
  
    def show
      @deck = Deck.find(params[:id])
      
      render json: @deck, include: :cards
    end
  
    def new
      @deck = Deck.new
    end
  
    def create
      @deck = Deck.create(deck_params)
  end
  
    def destroy
      @deck = Deck.find(params[:id])
      @deck.destroy
      flash[:notice] = 'Deck has been deleted'
    end

    def add_card
      @deck = Deck.find(params[:id])
      @copies = @deck.cards.where({id: params[:card]})
      @allcards = @deck.cards
      if @copies.length <2 && @allcards.length < 30
        @deck.cards.push(Card.find(params[:card]))
      end
      redirect_to @deck
    end

    private

  def deck_params
    params.require(:deck).permit(:name)
  end
  
  
  end