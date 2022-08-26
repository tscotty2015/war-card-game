require './Card.rb'

class Deck

    # Factory method to create the deck
    def self.build_standard_deck
        # 52 cards
        # 4 suits each containing a value
        # 13 Values ranging from A - K
        suits = [:spade, :diamond, :club, :heart]
        values = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]

        deck = Deck.new

        suits.each do |suit|
            values.each do |value|
                deck.cards << Card.new(value, suit)
            end
        end

        deck
    end

    attr_accessor :cards

    def initialize()
        @cards = []
    end

    def shuffle!
        @cards.shuffle!
    end

    def deal_out_a_card()
        [@cards.pop]
    end
end
