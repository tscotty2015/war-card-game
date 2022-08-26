require './Card.rb'

class Deck

    # Factory method to create the deck
    def self.build_standard_deck
        suits = [:spade, :diamond, :club, :heart]
        values = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]

        # Instantiate a new Deck and set it to a variable called deck

        # Create the deck with all the above combinations

        # Return deck
    end

    # add an attr_accessor with :cards

    def initialize()
        # Initialize @cards with and empty array
    end

    def shuffle!
        # Shuffle the cards inside the array
    end

    def deal_out_a_card()
        # Remove 1 card from the deck
    end
end
