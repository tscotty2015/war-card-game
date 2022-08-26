class Player

    attr_accessor :name, :hand

    def initialize(name)
        @name = name
        @hand = []
    end

    def accept_cards(new_cards)
        @hand += new_cards
    end

    def play_card
        #get first card in hand
        played_card = @hand.take 1

        #verify card is no longer in hand
        @hand -= played_card

        #return that card
        played_card
    end

    def give_3_cards
        cards = @hand.take 3
        @hand -= cards
        cards
    end
end
