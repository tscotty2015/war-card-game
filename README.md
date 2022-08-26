# War

Card game with 2 players, each player laying 1 card and the highest value wins, with Ace being the highest and 2 being the lowest
If, both players play the same card, 3 cards are placed face down and the fourth is played as above with the winner collecting all the cards

## Entities (Classes)
Player
Hand
Card
Deck

### Player
Name
Hand

### Hand
Cards

getCard()
addCards(cards)

### Card
Value (ex. K)
Suit (ex. spade)
weighted_value (ex. 13)

isGreaterThan(card): boolean

### Deck
cards

shuffle(): void
deal_out_cards(): void
    deal_a_card(): void