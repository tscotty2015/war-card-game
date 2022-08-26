require './Player.rb'
require './Deck.rb'

class Game

    def self.start
        game = Game.new

        while game.players_are_playing
            game.play
        end

        puts 'Game ended'
    end

    attr_accessor :players, :deck, :players_are_playing, :card_pile

    def initialize
        @players = [Player.new(:Shawn), Player.new(:Tristan)]
        @deck = Deck.build_standard_deck
        @players_are_playing = true
        @card_pile = []

        @deck.shuffle!
        deal_deck

        puts 'Created the game'
    end


    def play
        # Print and sleep
        display

        # Both players play a card
        player_1_card_to_play = @players[0].play_card
        player_2_card_to_play = @players[1].play_card

        # # Cards are compared
        player_who_won_cards = determine_player_whos_card_was_greatest player_1_card_to_play, player_2_card_to_play

        # # Player with the card of greater value wins all the cards played (player accepts cards)
        if (player_who_won_cards == 'Player 1')
            @players[0].accept_cards(player_1_card_to_play + player_2_card_to_play + @card_pile)
            @card_pile = []
        elsif (player_who_won_cards == 'Player 2')
            @players[1].accept_cards(player_1_card_to_play + player_2_card_to_play + @card_pile)
            @card_pile = []
        end

        check_if_game_is_over
    end

    private

    def determine_player_whos_card_was_greatest player_1_card, player_2_card
        if (player_1_card[0].weighted_value > player_2_card[0].weighted_value)
            return 'Player 1'
        elsif (player_1_card[0].weighted_value < player_2_card[0].weighted_value)
            return 'Player 2'
        else
            player_1s_cards_to_add_to_the_pile = player_1_card + @players[0].give_3_cards
            player_2s_cards_to_add_to_the_pile = player_2_card + @players[1].give_3_cards

            @card_pile += player_1s_cards_to_add_to_the_pile + player_2s_cards_to_add_to_the_pile

            return 'Tie'
        end
    end

    def check_if_game_is_over
        @players_are_playing = @players[0].hand.count > 0 && @players[1].hand.count > 0
    end

    def deal_deck
        while @deck.cards.count > 0
            @players[0].accept_cards(@deck.deal_out_a_card)
            @players[1].accept_cards(@deck.deal_out_a_card)
        end
    end

    def display
        @players.each do |player|
            puts "Player: #{player.name} Card Count: #{player.hand.count}\n"
        end

        puts "Card pile count: #{@card_pile.count}\n"

        sleep 0.1
    end

end
