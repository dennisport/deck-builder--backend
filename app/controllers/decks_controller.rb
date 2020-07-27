class DecksController < ApplicationController
    def index
      @decks = Deck.all
    end
  
    def show
      @deck = Deck.find(params[:id])
      @creator = @deck.user
      @cards = @deck.cards
    end
  
    def new
      @deck = Deck.new
      @user = current_user
    end
  
    def create
      @deck = Deck.new(deck_params)
      @deck.user = current_user
      if @deck.save
        flash[:notice] = "Deck created"
      else
        flash[:notice] = "Deck not saved"
      end
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
      if @copies.length <2 && @allcards.length < 60
        @deck.cards.push(Card.find(params[:card]))
      end
    end
  
    def delete_card
      @deck = Deck.find(params[:id])
      @card = Card.find(params[:card])
      @delete = IncludesCard.find_by({card_id: params[:card], deck_id: params[:id]})
      @delete.destroy
    end
  
    private
  
    def deck_params
      params.require(:deck).permit(:name, :user)
    end
  
  end