class Card

    @@card_weighted_values = {
        A: 14,
        K: 13,
        Q: 12,
        J: 11
    }

    attr_accessor :value, :suit, :weighted_value

    def initialize(value, suit)
        @value = value
        @suit = suit

        if ((value.class == String) || (value.class == Symbol))
            @weighted_value = @@card_weighted_values[value.to_sym] 
        else
            @weighted_value = value
        end
    end
end
