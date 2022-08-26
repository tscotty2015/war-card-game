require './Player.rb'
require './Deck.rb'

class Game

    def self.start
        # Create a new game object

        # Create a while loop to run the game while 'player_are_playing' is true
            # Invoke the game.play method inside the while loop

        # Add a print statement showing the game has ended
    end

    # add an attr_accessor for attributes :players, :deck, :players_are_playing, :card_pile

    def initialize
        # Create a players array with 2 players

        # Use the Deck factory to build_standard_deck

        # Initialize your players_are_playing sentinal value for your while loop

        # Initialize your card_pile with an empty array

        # Invoke your deck.shuffle! method

        # Invoke deal_deck
    end


    def play
        # Invoke the display method

        # Collect cards from both players to be played

        # Determine who won the round

        # Have the winning player of the round accept the won cards

        # Invoke check_if_game_is_over to determine if the game should continue
    end

    private

    def determine_player_whos_card_was_greatest player_1_card, player_2_card
        # Add logic for determining who won. Return 'Player 1', 'Player 2', or 'tie'
    end

    def check_if_game_is_over
        # Add logic to determine if the game is still being played, set that boolean to @players_are_playing
    end

    def deal_deck
        # Add a way to deal the cards evenly to both players
    end

    def display
        # Add some prints statements to see what is happening in the game

        # Add a sleeper to delay the execution of the game
    end

end
