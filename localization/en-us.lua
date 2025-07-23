return{
    descriptions = {
        Joker = {
            j_tsunami = {
                name = "Tsunami",
                text = {
                    "All {C:attention}cards{} are counted",
                    "Each {C:attention}counted{} card gives {C:mult}+#1#{} mult.",
                    "Every {C:attention}second{} counted card gives {C:mult}+#2#{} more",
                    "resets after hand scoring",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_avid_tourist = {
                name = "Avid Tourist",
                text = {
                    "Each played {C:attention}card{} permanently",
                    "gives {C:chips}+#1#{} chips when scored",
                    "bonus increases by {C:chips}+#2#{}",
                    "if the card hasn't been buffed before",
                    "resets to {C:chips}+#1#{} if it has",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_familiar_faces = {
                name = "Familiar Faces",
                text = {
                    "Each played {C:attention}face card{} permanently",
                    "gives {C:chips}+#1#{} chips when scored",
                    "bonus increases by {C:chips}+#2#{}",
                    "if the card has already been buffed",
                    "resets to {C:chips}+#1#{} if it hasn't",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_no_riff_raff = {
                name = "Bad Joke",
                text = {
                    "Creates a few common jokers",
                    "{C:mult}+#2#{} mult. when choosing a blind",
                    "if a joker was successfully added",
                    "{C:inactive}(currently {C:red}+#1#{C:inactive} mult.)",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_inflation = {
                name = "Lodger's Coupon",
                text = {
                    "Each played {C:attention}hand{} containing",
                    "{C:attention}2{} or more {C:diamonds}Diamonds{} cards gives",
                    "{C:mult}+#1#{} mult. and increases the sell price",
                    "of itself and adjacent jokers by {C:attention}+$#2#{}",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_super_greedy_joker = {
                name = "Golden Amber",
                text = {
                    "Played {C:diamonds}Diamond{} cards",
                    "give {C:attention}+$#1#{} when scored",
                    "every {C:attention}third{} counted card",
                    "increases payout by {C:attention}+$#2#{}",
                    "until end of round, other suits are weakened",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_harem = {
                name = "Harem Joker",
                text = {
                    "Each played {C:attention}Queen{} gives",
                    "{C:mult}+#1#{} mult. or {C:mult}+#2#{} if it's a {C:hearts}Heart{}",
                    "Played {C:attention}Queens{} become {C:hearts}Hearts{}",
                    "{C:hearts}Heart {C:attention}Queens{} gain a random suit",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_ruby = {
                name = "Crimson Ruby",
                text = {
                    "Each played {C:hearts}Heart{} card",
                    "has a {C:green}#7# in #4#{} chance to give",
                    "{C:chips}+#1#{} chips, {C:mult}+#2#{} mult., and {X:red,C:white}X#3#{} mult.",
                    "Recipe: {C:inactive}(#5# + #6#)"
                }
            },
            j_count_dracula = {
                name = "Count Dracula",
                text = {
                    "This joker grants {X:red,C:white}x#1#{} mult.",
                    "for each played and scored {C:attention}enhanced card{}",
                    "if the card was a {C:hearts}Heart{}, grants {X:red,C:white}x#2#{} instead",
                    "also removes the card's {C:attention}enhancement{}",
                    "{C:inactive}(Currently: mult. {X:mult,C:white}x#3# {C:inactive})",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_on_the_cutting_edge = {
                name = "Cutting Edge",
                text = {
                    "This joker gives {C:chips}+#1#{} chips",
                    "for each played and scored card",
                    "if its suit is {C:spades}Spades{}. Each played hand",
                    "containing {C:spades}Spades{} counts as {C:attention}2{} hands",
                    "Recipe: {C:inactive}(#2# + #3#)"
                }
            },
            j_hot_beans = {
                name = "Hot Beans",
                text = {
                    "Increases {C:attention}hand size{} by {C:attention}#1#{}",
                    "Decreases by {C:attention}1{} if the played hand",
                    "contains fewer than {C:attention}3 {C:spades}Spades{} cards",
                    "Recipe: {C:inactive}(#2# + #3#)"
                }
            },
            j_full_pockets = {
                name = "Full Pockets",
                text = {
                    "{C:red}+#1#{} mult. for each",
                    "card below {C:attention}#6#{} and each",
                    "{C:clubs}Clubs{} card above {C:attention}#3#{}",
                    "in your full deck",
                    "{C:inactive}(currently {C:red}+#2#{C:inactive} mult.)",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_greedy_agate = {
                name = "Greedy Agate",
				text = {
					"Each {C:clubs}club{} card played",
				    "gives {C:mult}+#1#{} mult {X:red,C:white}X#2#{} mult",
				    "if there are no {C:clubs}clubs{} cards left in your hand",
				    "Recipe: {C:inactive}(#3# + #4#)"
				}
            },
            j_half_flag = {
                name = "Half Flag",
                text = {
                    "{C:chips}+#1#{} chips",
                    "for a discard containing {C:attention}3{} or fewer cards",
                    "{C:inactive}(currently {C:chips}+#2#{C:inactive} chips)",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }    
            },
            j_true_madness = {
                name = "True Madness",
                text = {
                    "When choosing a {C:attention}blind{}",
                    "gain {X:mult,C:white}x#1#{} mult.",
                    "and {C:attention}destroy{} a random joker",
                    "increasing the bonus by {X:mult,C:white}x#3#{}",
                    "move to the far left position to temporarily disable",
                    "can destroy {C:attention}eternal{} jokers",
                    "{C:inactive}(Currently: mult. {X:mult,C:white}x#2#{C:inactive})",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_maniac_joker = {
                name = "Maniac Joker",
                text = {
                    "When choosing a {C:attention}blind{}",
                    "the joker to the right is destroyed if its rarity is {C:red}#1#{}",
                    "and permanently adds {C:attention}a quarter{}",
                    "of its sell price to this {X:mult,C:white}mult.{}",
                    "otherwise, the multiplier is {C:attention}halved{}",
                    "the required rarity changes randomly after a joker is destroyed",
                    "{C:inactive}(currently {X:mult,C:white}x#2#{C:inactive} mult.)",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_Absolute_emptiness = {
                name = "Absolute Emptiness",
                text = {
                    "{X:red,C:white}x1.5{} mult. for each",
                    "empty {C:attention}joker slot{},",
                    "including the joker stencil and Absolute Emptiness itself",
                    "Creates a copy of a random joker after defeating a boss blind",
                    "{C:inactive}(currently {X:red,C:white}x#1#{C:inactive})",
                    "Recipe: {C:inactive}(#2# + #3#)"
                }
            },
            j_banana_stencil = {
                name = "Banana Stencil",
                text = {
                    "{X:red,C:white}x#1#{} mult.",
                    "All {C:attention}edible{} jokers grant {X:red,C:white}x#2#{} mult.",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_quadruple_joker = {
                name = "Quadruple Joker",
                text = {
                    "This joker grants {C:chips}+#2#{} chips",
                    "if the played hand has exactly {C:attention}4{} cards.",
                    "Allows forming {C:attention}flushes{} and {C:attention}straights{} with {C:attention}4{} cards",
                    "{C:red}Prevents choosing more than 4 cards{}",
                    "{C:inactive}(Currently: {C:chips}#1#{C:inactive} chips)",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_business_acumen = {
                name = "Business Acumen",
                text = {
                    "The first {C:attention}3{} played {C:attention}face cards{}",
                    "have a {C:green}#6# in #3#{} chance to give {C:attention}+$#1#{}",
                    "The {C:attention}fourth{} face card increases payout to {C:attention}+$#2#{}",
                    "All further face cards subtract {C:attention}#$#1#{}",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_gold_card = {
                name = "Gold Card",
                text = {
                    "Increases its sell value by {C:attention}#$#1#{} at the end of the round",
                    "Take a loan equal to its current sell value",
                    "Recipe: {C:inactive}(#2# + #3#)"
                }
            },
            j_deposit = {
                name = "Deposit",
                text = {
                    "Takes {C:attention}#$#1#{} for each",
                    "played {C:attention}face card{}",
                    "and adds it to its {C:attention}sell value{}",
                    "multiplies its value by {C:attention}#2#{}",
                    "after defeating a {C:attention}boss blind{}",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_banana_smoothie = {
                name = "Banana Smoothie",
                text = {
                    "When choosing a {C:attention}blind{},",
                    "destroys the joker to the right",
                    "and permanently adds {C:attention}double{}",
                    "its sell value to this {C:red}mult.{}",
                    "{C:green}#5# in #2#{} chance to create a random",
                    "{C:attention}edible{} joker in its place",
                    "{C:inactive}(currently {C:mult}+#1#{C:inactive} mult.)",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_drunken_flag = {
                name = "Drunken Flag",
                text = {
                    "{C:red}+#2#{} discards per round",
                    "{C:chips}+#1#{} chips for",
                    "each remaining {C:attention}discard{}",
                    "{C:attention}weakens{} after a {C:attention}discard{} is used",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_supervillain = {
                name = "Supervillain",
                text = {
                    "When {C:attention}choosing a blind{}, converts",
                    "all {C:red}discards{} into {C:blue}hands{}, {C:red}+#1#{} mult.",
                    "bonus {C:attention}doubles{} for each {C:attention}played hand{}",
                    "and resets on {C:attention}blind selection{}",
                    "Recipe: {C:inactive}(#2# + #3#)"
                }
            },
            j_museum_thief = {
                name = "Museum Thief",
                text = {
                    "When choosing a {C:attention}blind{},",
                    "gain {C:blue}+#1#{} hands and",
                    "{C:attention}lose all discards{}",
                    "Adds one {C:attention}Stone{} card",
                    "to your deck on blind selection",
                    "Each played {C:attention}hand{} has a",
                    "{C:green}#5# in #2#{} chance to create",
                    "a {C:attention}Stone{} card",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_stoneface = {
                name = "Stoneface",
                text = {
                    "When choosing a {C:attention}blind{},",
                    "adds one {C:attention}Stone{} card to your deck",
                    "Gain {C:attention}$#1#{} when discarding a hand",
                    "containing {C:attention}#2#{} {C:attention}Stone{} cards",
                    "and create one more {C:attention}Stone{} card",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_billiard_trick = {
                name = "Billiard Trick",
                text = {
                    "{X:red,C:white}x#2#{} mult. on the {C:attention}last",
                    "{C:attention}hand{} of the round, and a",
                    "{C:green}#6# in #1#{} chance to create {C:attention}#3#{}",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_eight_shooter = {
                name = "Eight Shooter",
                text = {
                    "{C:green}#5# in #1#{} chance",
                    "to replay the {C:attention}first{} played card",
                    "used in scoring {C:attention}#2#{} additional times",
                    "chance increases with each {C:attention}8{} held in hand",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_random_mutation = {
                name = "Random Mutation",
                text = {
                    "If the {C:attention}first hand{} of the round",
                    "has only {C:attention}1{} card, add {C:attention}several{}",
                    "copies of it to your deck and place them in your {C:attention}hand{}",
                    "copies may change their {C:attention}suit{} and {C:attention}rank{}",
                    "Recipe: {C:inactive}(#1# + #2#)"
                }
            },
            j_starfall = {
                name = "Starfall",
                text = {
                    "Adds to mult. {C:attention}twice{} the number of",
                    "times a {C:attention}poker hand{} was played this run",
                    "{C:attention}Twice{} replays all played cards",
                    "on the {C:attention}last hand{} of the round",
                    "The {C:attention}poker hand of the last round{}",
                    "is considered played {C:attention}three times{}",
                    "Recipe: {C:inactive}(#2# + #3#)"
                }
            },
            j_blind_throw = {
                name = "Blind Throw",
                text = {
                    "All {C:green}chances{} {C:attention}guaranteed{} to trigger",
                    "on the {C:attention}last hand{} of the round",
                    "Recipe: {C:inactive}(#1# + #2#)"
                }
            },
            j_steel_will = {
                name = "Steel Will",
                text = {
                    "{X:red,C:white}x#2#{} mult. for each {C:attention}Steel{} card in your deck",
                    "Bonus is multiplied by {C:attention}one third{} the rank",
                    "of the {C:attention}lowest-ranked Steel card{} in your hand",
                    "{C:inactive}(currently mult. {X:mult,C:white}x#1#{C:inactive})",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_cobalt_joker = {
                name = "Cobalt Joker",
                text = {
                    "{C:chips}+#2#{} chips per",
                    "remaining card in your {C:attention}deck",
                    "{C:chips}+#3#{} chips if the card is {C:attention}Steel{}",
                    "After playing a {C:attention}Steel{} card it returns to the deck",
                    "{C:inactive}(currently {C:chips}+#1#{C:inactive} chips)",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_chaos_card = {
                name = "Chaos Card",
                text = {
                    "This joker grants {C:mult}+#2#{} mult.",
                    "for each {C:attention}reroll{} in the shop",
                    "each {C:attention}reroll{} may randomly become {C:attention}free{}",
                    "{C:inactive}(Currently: {C:mult}+#1#{C:inactive} mult.)",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_professor_skeleton = {
                name = "Professor Skeleton",
                text = {
                    "Prevents death,",
                    "then grants {C:attention}$#1#{} and",
                    "{C:attention}#2#{} free {C:green}rerolls",
                    "{S:1.1,C:red,E:2}self-destructs{}",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
            j_golden_ratio = {
                name = "Golden Ratio",
                text = {
                    "Each played {C:attention}golden{} {C:attention}Ace{},",
                    "{C:attention}2{}, {C:attention}3{}, {C:attention}5{}, or {C:attention}8{} gives {C:mult}+#2#{} mult. when scored",
                    "and increases the multiplier for received {C:attention}$ by {X:attention,C:white}x#3#{}",
                    "{C:inactive}(currently mult. {X:attention,C:white}x#1#{C:inactive})",
                    "{C:inactive} Sell price is not affected",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_mathematically_correct_beans = {
                name = "Mathematically Correct Beans",
                text = {
                    "Hand size {C:attention}+#1#{}",
                    "decreases by {C:red}1{} every round",
                    "Play {C:attention}Ace{}, {C:attention}2{}, {C:attention}3{}, {C:attention}5{}, and {C:attention}8{}",
                    "to restore original value; each also grants {C:mult}+#2#{} mult.",
                    "{C:inactive}(Remaining to play: #3#)",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_landslide = {
                name = "Landslide",
                text = {
                    "When choosing a {C:attention}blind{},",
                    "gain {C:blue}+#1#{} hands and",
                    "{C:attention}lose all discards{}",
                    "Adds one {C:attention}Stone{} card",
                    "to your deck for each {C:attention}played hand{}",
                    "All {C:attention}cards{} are scored",
                    "Each {C:attention}scored{} card gives {C:mult}+#2#{} mult.",
                    "Each {C:attention}additional{} card gives {C:mult}+#3#{} more",
                    "Resets after hand is scored",
                    "Replays all Stone cards",
                    "Recipe: {C:inactive}(#4# + #5#)"
                }
            },
            j_universe_of_jokes = {
                name = "Universe of Jokes",
                text = {
                    "Creates a {C:attention}random{} number of {C:attention}random{} jokers on {C:attention}blind selection{}",
                    "These jokers {C:attention}ignore{} the joker slot limit",
                    "After a random number of rounds, these jokers {S:1.1,C:red,E:2}self-destruct{}",
                    "Gains {X:mult,C:white}x#2#{} mult. for each {S:1.1,C:red,E:2}self-destruction{}",
                    "{C:inactive}(Currently: {X:mult,C:white}x#1#{C:inactive} mult.)",
                    "Recipe: {C:inactive}(#3# + #4#)"
                }
            },
        }
    },
	misc = {
		v_dictionary={
            emptiness_active="Actively!",
			emptiness_inactive="Inactive",
        },
        dictionary={
            b_fuse = "Merge",
            k_hybrid ="Hybrid",
            k_null = "reset",
            k_advanced_hybrid = "Advanced Hybrid",
            k_minushand = "-1 hand",
			k_art_by_BubbleBubble = "Art by BubbleBubble",
            ml_j_tsunami_short_description = {
                "All cards are counted when counting",
                "The more cards are counted, the more mult."
			},
            ml_j_avid_tourist_short_description = {
                "Played cards gain chip bonuses",
                "Play different cards to increase the bonus"
            },
            ml_j_familiar_faces_short_description = {
                "Played cards gain chip bonuses",
                "Play the same face cards to increase the bonus"
            },
            ml_j_no_riff_raff_short_description = {
                "Creates several regular Jokers",
                "Each one increases the multiplier"
            },
            ml_j_inflation_short_description = {
                "Hands with 2 or more Diamonds gain multiplier",
                "And increase Joker prices"
            },
            ml_j_super_greedy_joker_short_description = {
                "Diamond cards generate a lot of money",
                "Other suits are weakened"
            },
            ml_j_harem_short_description = {
                "Played Queens give multiplier",
                "More if the Queen is a Heart",
                "Queens randomly change suit"
            },
            ml_j_ruby_short_description = {
                "Played Hearts have a 1 in 3 chance",
                "to give Chips and Mult."
            },
            ml_j_count_dracula_short_description = {
                "Played enhanced cards increase Mult.",
                "Hearts increase it more",
                "and lose enhancement"
            },
            ml_j_on_the_cutting_edge_short_description = {
                "Played Spades give a lot of Chips",
                "If Spades are in hand, hand counts as 2"
            },
            ml_j_hot_beans_short_description = {
                "Increases hand size",
                "If hand has no 2 Spades,",
                "bonus is reduced"
            },
            ml_j_full_pockets_short_description = {
                "Mult. increases the fewer cards",
                "are in your full deck, and the more Clubs"
            },
            ml_j_greedy_agate_short_description = {
                "Played Clubs give Mult.",
                "Reduces Mult. if no Clubs in hand"
            },
            ml_j_half_flag_short_description = {
                "Discards with fewer than 3 cards",
                "give more Chips"
            },
            ml_j_true_madness_short_description = {
                "Destroys a random Joker when picking a blind",
                "and increases Mult. Bonus increases if",
                "a Joker is destroyed, and decreases if not",
                "Can destroy Eternal Jokers"
            },
            ml_j_maniac_joker_short_description = {
                "Destroys the Joker on the right when picking a blind",
                "if it has the right rarity and increases Mult."
            },
            ml_j_Absolute_emptiness_short_description = {
                "Increases Mult. for every empty Joker slot",
                "After beating a Boss Blind, copies a random Joker"
            },
            ml_j_banana_stencil_short_description = {
                "All edible Jokers grant multiplier."
            },
            ml_j_quadruple_joker_short_description = {
                "Allows making a Flush or Straight with 4 cards.",
                "Increases chips if 4 cards are played.",
                "Prevents playing more than 4 cards."
            },
            ml_j_business_acumen_short_description = {
                "First 3 face cards played have a 1 in 2 chance",
                "to pay out. The 4th card pays a huge reward.",
                "Further cards deduct money instead."
            },
            ml_j_gold_card_short_description = {
                "Increases sell value at end of round.",
                "Borrow as much money as this Joker's sell value."
            },
            ml_j_banana_smoothie_short_description = {
                "Destroys the Joker to the right when selecting a blind.",
                "Has a 1 in 6 chance to replace it with an edible Joker."
            },
            ml_j_drunken_flag_short_description = {
                "+1 discard per round.",
                "Gains chips per unused discard.",
                "Weakens after a discard is used."
            },
            ml_j_supervillain_short_description = {
                "Turns all discards into hands.",
                "Doubles multiplier after every hand played."
            },
            ml_j_museum_thief_short_description = {
                "+3 hands. Lose all discards.",
                "Each hand played may create a stone card."
            },
            ml_j_stoneface_short_description = {
                "With 3 or more stone cards,",
                "grants a reward and creates another stone card."
            },
            ml_j_billiard_trick_short_description = {
                "Multiplier on the last hand of the round.",
                "1 in 2 chance to create a charm tag."
            },
            ml_j_eight_shooter_short_description = {
                "Each 8 in hand increases the chance",
                "to replay the first played card 8 times",
            },
            ml_j_random_mutation_short_description = {
                "Creates a random number of card copies",
                "Copies may change suit or rank",
            },
            ml_j_starfall_short_description = {
                "Adds to mult. the doubled number of times",
                "a poker hand has been played",
                "A poker hand is played 3 times on the last hand of the round",
            },
            ml_j_blind_throw_short_description = {
                "All chances always trigger on the last hand",
            },
            ml_j_steel_will_short_description = {
                "The higher the rank of the lowest steel card",
                "in hand, the higher the mult.",
            },
            ml_j_cobalt_joker_short_description = {
                "Each steel card in the deck grants chips",
                "Played steel cards return to the deck after play",
            },
            ml_j_chaos_card_short_description = {
                "Shop rerolls may be free",
                "Increases mult. for each reroll",
            },
            ml_j_professor_skeleton_short_description = {
                "Prevents death upon defeat",
                "Grants free rerolls and a reward",
            },
            ml_j_golden_ratio_short_description = {
                "Played golden Aces, 2s, 3s, 5s, and 8s",
                "increase the $ multiplier from all sources",
            },
            ml_j_mathematically_correct_beans_short_description = {
                "Increases hand size. Hand size shrinks each round",
                "Play Ace, 2, 3, 5, and 8 to restore original size",
            },
            ml_j_landslide_short_description = {
                "Absorbs all discards. +3 hands. Adds Stone cards with each hand",
                "The more cards are counted, the higher the mult.",
            },
            ml_j_universe_of_jokes_short_description = {
                "Creates jokers that ignore the joker limit",
                "After a few blinds, they self-destruct and increase mult.",
            },
        },
        labels={
            hybrid = "Hybrid",
            advanced_hybrid = "Advanced Hybrid"
        },
        challenge_names={
            c_there_is_a_wave_coming = "There's a wave coming",
			c_familiar_strangers = "Familiar strangers",
            c_Rich_joker_poor_joker = "Rich Joker Poor Joker"
        },
	}
}