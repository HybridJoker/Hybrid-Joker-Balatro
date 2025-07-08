--- STEAMODDED HEADER
--- MOD_NAME: Hybrid Joker
--- MOD_ID: hybridjoker
--- MOD_AUTHOR: [Demidoslav]
--- MOD_DESCRIPTION: Mod adds hybrid jokers
--- BADGE_COLOUR: B26CBB
--- PRIORITY: -10000
--- DEPENDENCIES: [Steamodded>=1.0.0~BETA-0410b]
--- VERSION: 0.0.1
----------------------------------------------
------------MOD CODE -------------------------

-- Карты недоступные в режиме одисеи
banned_cards = {
	{id = 'c_hermit'},
	{id = 'c_temperance'},
}

SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})

local mod_vouchers = {
    v_joker_slot_plus = true,
}

-- Ограничение квадратного джокера
local quadruple_limit = 4

-- Редкости джокеров
SMODS.Rarity{
    key = "Hybrid",
    badge_colour = HEX('f5e642'),
}

SMODS.Rarity{
    key = "Advanced_Hybrid",
    badge_colour = HEX('f5b942'),
}

SMODS.Rarity{
    key = "Royal_hybrid",
    badge_colour = HEX('f57542'),
}

SMODS.Rarity{
    key = "Divine_hybrid",
    badge_colour = HEX('f54242'),
}

-- Рецепты гибридов
HybridJoker = {}
HybridJoker.fusions = {
	{ jokers = {
		{ name = "j_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_splash", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_tsunami", cost = 5},
	{ jokers = {
		{ name = "j_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_hiker", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_avid_tourist", cost = 5},
	{ jokers = {
		{ name = "j_scary_face", carry_stat = nil, extra_stat = false },
		{ name = "j_hiker", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_familiar_faces", cost = 5},
	{ jokers = {
		{ name = "j_riff_raff", carry_stat = nil, extra_stat = false },
		{ name = "j_misprint", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_no_riff_raff", cost = 5},
	{ jokers = {
		{ name = "j_greedy_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_rough_gem", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_super_greedy_joker", cost = 8},
	{ jokers = { 
		{ name = "j_gift", carry_stat = nil, extra_stat = false },
		{ name = "j_greedy_joker", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_inflation", cost = 8},
	{ jokers = { 
		{ name = "j_lusty_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_shoot_the_moon", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_harem", cost = 5},
	{ jokers = { 
		{ name = "j_lusty_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_bloodstone", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_ruby", cost = 8},
	{ jokers = { 
		{ name = "j_bloodstone", carry_stat = nil, extra_stat = false },
		{ name = "j_vampire", carry_stat = "x_mult", extra_stat = false }
	}, result_joker = "j_count_dracula", cost = 10},
	{ jokers = { 
		{ name = "j_wrathful_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_arrowhead", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_on_the_cutting_edge", cost = 8},
	{ jokers = { 
		{ name = "j_wrathful_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_turtle_bean", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_hot_beans", cost = 8},
	{ jokers = { 
		{ name = "j_gluttenous_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_erosion", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_full_pockets", cost = 8},
	{ jokers = { 
		{ name = "j_half", carry_stat = nil, extra_stat = false },
		{ name = "j_banner", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_half_flag", cost = 5},
	{ jokers = { 
		{ name = "j_madness", carry_stat = "x_mult", extra_stat = false },
		{ name = "j_obelisk", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_true_madness", cost = 15},
	{ jokers = { 
		{ name = "j_madness", carry_stat = "x_mult", extra_stat = false },
		{ name = "j_ceremonial", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_maniac_joker", cost = 10},
	{ jokers = { 
		{ name = "j_stencil", carry_stat = nil, extra_stat = false },
		{ name = "j_invisible", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_Absolute_emptiness", cost = 15},
	{ jokers = { 
		{ name = "j_stencil", carry_stat = nil, extra_stat = false },
		{ name = "j_cavendish", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_banana_stencil", cost = 10},
	{ jokers = { 
		{ name = "j_square", carry_stat = "chips", extra_stat = true},
		{ name = "j_four_fingers", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_quadruple_joker", cost = 5},
	{ jokers = { 
		{ name = "j_four_fingers", carry_stat = nil, extra_stat = true},
		{ name = "j_business", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_business_acumen", cost = 5},
	{ jokers = { 
		{ name = "j_credit_card", carry_stat = nil, extra_stat = false },
		{ name = "j_egg", carry_stat = "sell_cost", extra_stat = false }
	}, result_joker = "j_gold_card", cost = 5},
	{ jokers = { 
		{ name = "j_ceremonial", carry_stat = "mult", extra_stat = false },
		{ name = "j_gros_michel", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_banana_smoothie", cost = 8},
	{ jokers = { 
		{ name = "j_banner", carry_stat = nil, extra_stat = false },
		{ name = "j_drunkard", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_drunken_flag", cost = 5},
	{ jokers = { 
		{ name = "j_burglar", carry_stat = nil, extra_stat = false },
		{ name = "j_mystic_summit", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_supervillain", cost = 8},
	{ jokers = { 
		{ name = "j_burglar", carry_stat = nil, extra_stat = false },
		{ name = "j_marble", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_museum_thief", cost = 10},
	{ jokers = { 
		{ name = "j_faceless", carry_stat = nil, extra_stat = false },
		{ name = "j_marble", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_stoneface", cost = 8},
	{ jokers = { 
		{ name = "j_8_ball", carry_stat = nil, extra_stat = false },
		{ name = "j_acrobat", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_billiard_trick", cost = 8},
	{ jokers = { 
		{ name = "j_8_ball", carry_stat = nil, extra_stat = false },
		{ name = "j_hanging_chad", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_eight_shooter", cost = 5},
	{ jokers = { 
		{ name = "j_dna", carry_stat = nil, extra_stat = false },
		{ name = "j_misprint", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_random_mutation", cost = 15},
	{ jokers = { 
		{ name = "j_dusk", carry_stat = nil, extra_stat = false },
		{ name = "j_supernova", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_starfall", cost = 8},
	{ jokers = { 
		{ name = "j_dusk", carry_stat = nil, extra_stat = false },
		{ name = "j_oops", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_blind_throw", cost = 8},
	{ jokers = { 
		{ name = "j_steel_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_raised_fist", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_steel_will", cost = 10},
	{ jokers = { 
		{ name = "j_steel_joker", carry_stat = nil, extra_stat = false },
		{ name = "j_blue_joker", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_cobalt_joker", cost = 8},
	{ jokers = { 
		{ name = "j_chaos", carry_stat = nil, extra_stat = false },
		{ name = "j_flash", carry_stat = "mult", extra_stat = false }
	}, result_joker = "j_chaos_card", cost = 8},
	{ jokers = { 
		{ name = "j_mr_bones", carry_stat = nil, extra_stat = false },
		{ name = "j_chaos", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_professor_skeleton", cost = 10},
	{ jokers = { 
		{ name = "j_fibonacci", carry_stat = nil, extra_stat = false },
		{ name = "j_ticket", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_golden_ratio", cost = 10},
	{ jokers = { 
		{ name = "j_turtle_bean", carry_stat = nil, extra_stat = false },
		{ name = "j_fibonacci", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_mathematically_correct_beans", cost = 10},
	{ jokers = { 
		{ name = "j_tsunami", carry_stat = nil, extra_stat = false },
		{ name = "j_museum_thief", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_landslide", cost = 25},
	{ jokers = { 
		{ name = "j_no_riff_raff", carry_stat = nil, extra_stat = false },
		{ name = "j_Absolute_emptiness", carry_stat = nil, extra_stat = false }
	}, result_joker = "j_universe_of_jokes", cost = 25},
}

-- Возвращает место нахождения джокера по имени, -1 если джокера нет в руке
local function has_joker(val)
	for k, v in pairs(G.jokers.cards) do
		if v.ability.set == 'Joker' and v.config.center_key == val then 
			return k
		end
	end
	return -1
end

-- находит НЕ ВЕЧНОГО джокера в руке по имени, nil если такого нет
local function find_non_eternal_joker(name)
    for k, card in ipairs(G.jokers.cards) do
        if card.ability.set == 'Joker' and card.config.center_key == name and not card.ability.eternal then
            return k
        end
    end
    return nil
end

-- получает любые джокеры
local function get_all_visible_jokers()
	local result = {}

	if G.jokers == nil then
		return result
	end
	-- Джокеры в руке
	for _, card in ipairs(G.jokers.cards or {}) do
		if card.ability.set == 'Joker' then
			table.insert(result, card)
		end
	end

	if G.shop_jokers == nil then
		return result
	end
	-- Джокеры в магазине
	if G.shop_jokers then
		for _, card in ipairs(G.shop_jokers.cards or {}) do
			if card.ability.set == 'Joker' then
				table.insert(result, card)
			end
		end
	end

	if G.pack_cards == nil then
		return result
	end
	-- Джокеры в бустерах (pack_cards)
	if G.pack_cards then
		for _, card in ipairs(G.pack_cards.cards or {}) do
			if card.ability.set == 'Joker' then
				table.insert(result, card)
			end
		end
	end

	return result
end

-- Обертка, нужна для совместимости с модом талисман
local function big_number(n)
    if to_big then
        return to_big(n)
    else
        return n
    end
end

local function big(n)
    return to_big and to_big(n) or n
end

local function dollars_geq(n)
    return G.GAME.dollars >= big(n)
end

local function dollars_lt(n)
    return G.GAME.dollars < big(n)
end

local function dollars_eq(n)
    return G.GAME.dollars == big(n)
end

-- Можно ли смешать джокеров, проверяет есть ли деньги, не вечные ли джокеры и тд
function Card:can_fuse_card()
	if self.ability.eternal then
		return false
	end

	for _, fusion in ipairs(HybridJoker.fusions) do
		if dollars_geq(fusion.cost + G.GAME.bankrupt_at) then
			local found_me = false
			local all_jokers = true
			for __, joker in ipairs(fusion.jokers) do
				if find_non_eternal_joker(joker.name) == nil then
					all_jokers = false
				end
				if joker.name == self.config.center_key then
					found_me = true
				end
			end
			if found_me and all_jokers then
				return true
			end
		end
	end 
    return false
end

-- Находит карты гибриды
function Card:get_card_fusion()
	if self.ability.eternal then return nil end
	if not HybridJoker or not HybridJoker.fusions then return nil end

	local visible_jokers = get_all_visible_jokers()

	-- Список имён всех видимых джокеров (без вечных)
	local present = {}
	for _, card in ipairs(visible_jokers) do
		if not card.ability.eternal then
			present[card.config.center_key] = true
		end
	end

	for _, fusion in ipairs(HybridJoker.fusions) do
		local names = {}
		for _, j in ipairs(fusion.jokers) do
			names[j.name] = true
		end

		if names[self.config.center_key] then
			local all_found = true
			for _, j in ipairs(fusion.jokers) do
				if not present[j.name] then
					all_found = false
					break
				end
			end
			if all_found then
				return fusion
			end
		end
	end

	return nil
end

-- Основная логика создания гибрида, все эффекты при его создании лучше запихнуть сюда
function Card:fuse_card()
	G.CONTROLLER.locks.selling_card = true
    stop_use()
    local area = self.area
    G.CONTROLLER:save_cardarea_focus('jokers')

    if self.children.use_button then self.children.use_button:remove(); self.children.use_button = nil end
    if self.children.sell_button then self.children.sell_button:remove(); self.children.sell_button = nil end

	local my_pos = find_non_eternal_joker(self.config.center_key) 

	local chosen_fusion = nil
	local joker_pos = {}
	local found_me = false
	for _, fusion in ipairs(HybridJoker.fusions) do
		joker_pos = {}
		found_me = false
		for __, joker in ipairs(fusion.jokers) do
			if find_non_eternal_joker(joker.name) ~= nill then
				table.insert(joker_pos, find_non_eternal_joker(joker.name))
			end
			if joker.name == self.config.center_key then
				found_me = true
			end
		end

		if #joker_pos == #fusion.jokers and found_me then
			chosen_fusion = fusion
			break
		end
	end

	if chosen_fusion ~= nil then
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
			play_sound('whoosh1')
			for _, pos in ipairs(joker_pos) do
				G.jokers.cards[pos]:juice_up(0.3, 0.4)
			end
			return true
		end}))
		delay(0.2)
		G.E_MANAGER:add_event(Event({trigger = 'immediate',func = function()
			ease_dollars(-chosen_fusion.cost)
			local inherited_sell_cost = nil

			if chosen_fusion.result_joker == "j_gold_card" then
				for index, pos in ipairs(joker_pos) do
					if chosen_fusion.jokers[index].name == "j_egg" then
						inherited_sell_cost = G.jokers.cards[pos].sell_cost + 20
						break
					end
				end
			end

			local j_fusion = create_card('Joker', nil, nil, nil, nil, nil, chosen_fusion.result_joker, nil)

			if inherited_sell_cost then
				j_fusion.sell_cost = inherited_sell_cost
			end
						
			for index, pos in ipairs(joker_pos) do
				local check_joker = chosen_fusion.jokers[index]
				if check_joker.carry_stat then
					if check_joker.extra_stat then
						j_fusion.ability.extra[check_joker.carry_stat] = G.jokers.cards[pos].ability.extra[check_joker.carry_stat]
					else
						j_fusion.ability[check_joker.carry_stat] = G.jokers.cards[pos].ability[check_joker.carry_stat]
					end
				end
				
				G.jokers.cards[pos]:start_dissolve({G.C.GOLD})
			end
			
			delay(0.3)
			j_fusion:add_to_deck()
			G.jokers:emplace(j_fusion)
			play_sound('explosion_release1')

			delay(0.1)
			G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.3, blocking = false,
			func = function()
				G.E_MANAGER:add_event(Event({trigger = 'immediate',
				func = function()
					G.E_MANAGER:add_event(Event({trigger = 'immediate',
					func = function()
						G.CONTROLLER.locks.selling_card = nil
						G.CONTROLLER:recall_cardarea_focus(area == G.jokers and 'jokers' or 'consumeables')
					return true
					end}))
				return true
				end}))
			return true
			end}))
			return true
		end}))
	end

	G.CONTROLLER.locks.selling_card = nil
	G.CONTROLLER:recall_cardarea_focus('jokers')
end

G.FUNCS.fuse_card = function(e)
    local card = e.config.ref_table
    card:fuse_card()
end

G.FUNCS.can_fuse_card = function(e)
    if e.config.ref_table:can_fuse_card() then 
        e.config.colour = G.C.DARK_EDITION
        e.config.button = 'fuse_card'
    else
      	e.config.colour = G.C.UI.BACKGROUND_INACTIVE
      	e.config.button = nil
    end
end

-- Кнопочка для слияния
local use_and_sell_buttonsref = G.UIDEF.use_and_sell_buttons
function G.UIDEF.use_and_sell_buttons(card)
	local retval = use_and_sell_buttonsref(card)

	if card.ability.fusion == nil then
		return retval
	end
	
	if card.area and card.area.config.type == 'joker' and card.ability.set == 'Joker' then
		local fuse = 
		{n=G.UIT.C, config={align = "cr"}, nodes={
		  
		  {n=G.UIT.C, config={ref_table = card, align = "cr",maxw = 1.25, padding = 0.1, r=0.08, minw = 1.25, hover = true, shadow = true, colour = G.C.GOLD, one_press = true, button = 'sell_card', func = 'can_fuse_card'}, nodes={
			{n=G.UIT.B, config = {w=0.1,h=0.6}},
			{n=G.UIT.C, config={align = "tm"}, nodes={
				{n=G.UIT.R, config={align = "cm", maxw = 1.25}, nodes={
					{n=G.UIT.T, config={text = localize('b_fuse'),colour = G.C.UI.TEXT_LIGHT, scale = 0.4, shadow = true}}
				}},
				{n=G.UIT.R, config={align = "cm"}, nodes={
					{n=G.UIT.T, config={text = localize('$'),colour = G.C.WHITE, scale = 0.4, shadow = true}},
					{n=G.UIT.T, config={ref_table = card, ref_value = 'fusion_cost',colour = G.C.WHITE, scale = 0.6, shadow = true}}
				}}
			}}
		  }}
		}}
		retval.nodes[1].nodes[2].nodes = retval.nodes[1].nodes[2].nodes or {}
		table.insert(retval.nodes[1].nodes[2].nodes, fuse)
		return retval
	end

	return retval
end

-- тут можно сунуть цвет и название редкости гибрида
local card_h_popupref = G.UIDEF.card_h_popup
function G.UIDEF.card_h_popup(card)
    local retval = card_h_popupref(card)
    if not card.config.center or
	(card.config.center.unlocked == false and not card.bypass_lock) or
	card.debuff or
	(not card.config.center.discovered and ((card.area ~= G.jokers and card.area ~= G.consumeables and card.area) or not card.area))
	then return retval end

	if card.config.center.rarity == "Hybrid" then
		retval.nodes[1].nodes[1].nodes[1].nodes[3].nodes[1].nodes[1].nodes[2].config.object:remove()
		retval.nodes[1].nodes[1].nodes[1].nodes[3].nodes[1] = create_badge (localize('k_fusion'), HEX('f5e642'), nil, 1.2)
	end
	if card.config.center.rarity == "Advanced_Hybrid" then
		retval.nodes[1].nodes[1].nodes[1].nodes[3].nodes[1].nodes[1].nodes[2].config.object:remove()
		retval.nodes[1].nodes[1].nodes[1].nodes[3].nodes[1] = create_badge (localize('k_advanced_hybrid'), HEX('f5b942'), nil, 1.2)
	end
	return retval
end

-- проверка наличия квадратного джокера
local function has_quadruple_joker()
	for _, card in ipairs(G.jokers.cards or {}) do
		if card.ability and card.ability.name == 'Четверной джокер' then
			return true
		end
	end
	return false
end

local updateref = Card.update
function Card:update(dt)
	updateref(self, dt)
	if G.STAGE == G.STAGES.RUN then
		local fusion = self:get_card_fusion()
		if fusion then
			self.ability.fusion = self.ability.fusion or {}
			self.fusion_cost = fusion.cost

			if not self.ability.fusion.last_juice or G.TIMERS.REAL - self.ability.fusion.last_juice > 1.2 then
				self:juice_up(0.3, 0.4)
				self.ability.fusion.last_juice = G.TIMERS.REAL
			end

			self.ability.fusion.jiggle = true
		end

		if not G.GAME or not G.hand then return end

		-- Сохраняем оригинальное значение, если ещё не было
		if not G.GAME.run_setup.original_hand_limit then
			G.GAME.run_setup.original_hand_limit = G.hand.config.highlighted_limit or 5
		end

		local has_joker = has_quadruple_joker()
		local current_limit = G.hand.config.highlighted_limit
		local saved_limit = G.GAME.run_setup.original_hand_limit

		if has_joker then
			if current_limit > quadruple_limit then
				-- Применяем ограничение
				G.hand.config.highlighted_limit = quadruple_limit
			end
		else
			-- Восстанавливаем оригинальное значение
			if current_limit < saved_limit then
				G.hand.config.highlighted_limit = saved_limit
			end
		end
	end
end

local original_end_round = end_round
function end_round()
    local expired = {}
    
    -- Уменьшаем счётчики временным джокерам
    for _, card in ipairs(G.jokers.cards or {}) do
        if card.ability and card.ability.joker_universe then
            card.ability.joker_universe = card.ability.joker_universe - 1
            if card.ability.joker_universe <= 0 then
                table.insert(expired, card)
            end
        end
    end

    -- Если есть истёкшие джокеры — начисляем бонус и удаляем
    if #expired > 0 then
        local universe_jokers = {}
        for _, card in ipairs(G.jokers.cards or {}) do
            if card.ability and card.ability.name == "Вселенная шуток" then
                table.insert(universe_jokers, card)
            end
        end

        for _, universe in ipairs(universe_jokers) do
            local bonus = universe.ability.extra.bonus_base_dop * #expired
            universe.ability.Xmult = universe.ability.Xmult + bonus
        end

        -- Удаляем джокеры
        for _, card in ipairs(expired) do
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound('tarot1')
                    card.T.r = -0.2
                    card:juice_up(0.3, 0.4)
                    card.states.drag.is = true
                    card.children.center.pinch.x = true
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after',
                        delay = 0.3,
                        blockable = false,
                        func = function()
                            G.jokers:remove_card(card)
                            card:remove()
                            return true
                        end
                    }))
                    return true
                end
            }))
        end
    end

    return original_end_round()
end

-- Функция срабатывающая при добавлении джокера в колоду
local add_to_deckref = Card.add_to_deck
function Card:add_to_deck(from_debuff)
  	if not self.added_to_deck then
		if self.ability.name == 'Острая фасоль' then
			G.hand:change_size(self.ability.extra.hand_size)
		end
		if self.ability.name == 'Математически верная фасоль' then
			G.hand:change_size(self.ability.extra.hand_size)
		end
		if self.ability.name == 'Золотая карта' then
            G.GAME.bankrupt_at = G.GAME.bankrupt_at - self.sell_cost
        end
  	end
  	add_to_deckref(self, from_debuff)
end

-- Функция при удалении джокера из колоды
local remove_from_deckref = Card.remove_from_deck
function Card:remove_from_deck(from_debuff)
	if self.added_to_deck then
		if self.ability.name == 'Острая фасоль' then
			G.hand:change_size(-self.ability.extra.hand_size)
		end
		if self.ability.name == 'Математически верная фасоль' then
			G.hand:change_size(-self.ability.extra.hand_size)
		end
		if self.ability.name == 'Золотая карта' then
            G.GAME.bankrupt_at = G.GAME.bankrupt_at + self.sell_cost
        end
	end
	remove_from_deckref(self, from_debuff)
end

-- Просто выдает случайное число
local function get_random_rarity()
	local roll = pseudorandom('rarity_roll')
	if roll < 0.70 then
		return 1  -- 70% шанс
	elseif roll < 0.95 then
		return 2  -- 25% шанс
	else
		return 3  -- 5% шанс
	end
end

-- Оборачиваем строки в формат {id = '...'}
local function wrap_ids(list)
    local result = {}
    for _, id in ipairs(list) do
        table.insert(result, {id = id})
    end
    return result
end

-- Тут весь контент, джокеры ваунчеры и так далее
function SMODS.INIT.hybridjoker()
	local mod_id = "hybridjoker"
	local mod_obj = SMODS.findModByID(mod_id)

  	local function has_four_fingers()
    	return next(find_joker('Four Fingers')) or next(SMODS.find_card('j_quadruple_joker'))
 	end

  	_G.get_flush = function(hand)
		local ret = {}
		local suits = {"Spades", "Hearts", "Clubs", "Diamonds"}
		local required = 5 - (has_four_fingers() and 1 or 0)

		if #hand > 5 or #hand < required then return ret end

		for _, suit in ipairs(suits) do
		local t = {}
		local count = 0
		for _, card in ipairs(hand) do
			if card:is_suit(suit, nil, true) then
			count = count + 1
			t[#t+1] = card
			end
		end
		if count >= required then
			table.insert(ret, t)
			return ret
		end
		end

		return {}
	end

	_G.get_straight = function(hand)
		local ret = {}
		local required = 5 - (has_four_fingers() and 1 or 0)
		if #hand > 5 or #hand < required then return ret end

		local IDS = {}
		for _, card in ipairs(hand) do
		local id = card:get_id()
		if id > 1 and id < 15 then
			IDS[id] = IDS[id] or {}
			table.insert(IDS[id], card)
		end
		end

		local straight = {}
		local length = 0
		local skipped = false
		local can_skip = next(find_joker('Shortcut'))

		for i = 1, 14 do
		local j = (i == 1 and 14 or i)
		if IDS[j] then
			length = length + 1
			for _, card in ipairs(IDS[j]) do
			table.insert(straight, card)
			end
		elseif can_skip and not skipped and i ~= 14 then
			skipped = true
		else
			if length >= required then break end
			straight = {}
			length = 0
			skipped = false
		end
		end

		if length >= required then
		table.insert(ret, straight)
		end
		return ret
	end

	-- G.GAME.run_setup and G.GAME.run_setup.odyssey_mode == true
	-- G.GAME.used_vouchers['v_joker_slot_plus']
	-- Дополнительный слот
	if mod_obj ~= nil then
		SMODS.Sprite:new("joker_slot_plus", mod_obj.path, "v_joker_slot_plus.png", 71, 95, "asset_atli"):register()
		SMODS.Voucher{
			key = 'joker_slot_plus',
			name = 'Расширитель',
			sprite = 'joker_slot_plus', 
			unlocked = true,
			discovered = true,
			config = {},
		}:register()
	end

	-- Цунами
	if mod_obj ~= nil then
		local tsunami = SMODS.Joker:new("Цунами", "tsunami", {extra = {mult = 1, mult_mod = 1, uses = 0, joker1 = "j_splash", joker2 = "j_joker"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_tsunami", mod_obj.path, "j_tsunami.png", 71, 95, "asset_atli"):register();
		tsunami:register()

		function SMODS.Jokers.j_tsunami.loc_def(card)
			return {card.ability.extra.mult, card.ability.extra.mult_mod,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_tsunami.calculate(card, context)
			if context.cardarea == G.play and context.individual then
				card.ability.extra.uses = (card.ability.extra.uses or 0) + 1
				if card.ability.extra.uses % 2 == 0 then
					card.ability.extra.mult = (card.ability.extra.mult or 0) + card.ability.extra.mult_mod
				end
				return {
					message = localize({
						type = "variable",
						key = "a_mult",
						vars = {card.ability.extra.mult}
					}),
					mult_mod = card.ability.extra.mult,
					colour = G.C.MULT
				}
			end
			if context.after and context.cardarea == G.jokers then
				card.ability.extra.mult = 1
				card.ability.extra.uses = 0
				return {
					message = localize('k_reset'),
					colour = G.C.MULT
				}
			end
		end
	end

	-- Заядлый турист
	if mod_obj ~= nil then
		local avid_tourist = SMODS.Joker:new("Заядлый турист", "avid_tourist", {extra = {
		bonus_base = 5, bonus_base_dop = 3, joker1 = "j_hiker", joker2 = "j_joker"
		}}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_avid_tourist", mod_obj.path, "j_avid_tourist.png", 71, 95, "asset_atli"):register();
		avid_tourist:register()

		function SMODS.Jokers.j_avid_tourist.loc_def(card)
			return {card.ability.extra.bonus_base, card.ability.extra.bonus_base_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_avid_tourist.calculate(card, context)
			if context.individual and context.cardarea == G.play then
				local other = context.other_card
				local bonus_base = card.ability.extra.bonus_base or 0
				local bonus_base_dop = card.ability.extra.bonus_base_dop or 0
				local had_bonus = other.ability.perma_bonus == 0
				other.ability.perma_bonus = other.ability.perma_bonus or 0
				other.ability.perma_bonus = other.ability.perma_bonus + bonus_base
	
				if had_bonus then
					card.ability.extra.bonus_base = bonus_base + bonus_base_dop
					return {
						message = localize('k_val_up'),
						colour = G.C.MONEY
					}
				else
					card.ability.extra.bonus_base = 5
					return {
						message = localize('k_reset'),
						colour = G.C.MONEY
					}
				end
			end
		end
	end

	-- Знакомые лица
	if mod_obj ~= nil then	
		local familiar_faces = SMODS.Joker:new("Знакомые лица", "familiar_faces", {extra = {
		bonus_base = 5, bonus_base_dop = 5, joker1 = "j_hiker", joker2 = "j_scary_face"
		}}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_familiar_faces", mod_obj.path, "j_familiar_faces.png", 71, 95, "asset_atli"):register();
		familiar_faces:register()

		function SMODS.Jokers.j_familiar_faces.loc_def(card)
			return {card.ability.extra.bonus_base, card.ability.extra.bonus_base_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_familiar_faces.calculate(card, context)
			if context.individual and context.cardarea == G.play and context.other_card:is_face() then
				local other = context.other_card
				local bonus_base = card.ability.extra.bonus_base or 0
				local bonus_base_dop = card.ability.extra.bonus_base_dop or 0
				local had_bonus = other.ability.perma_bonus ~= 0
				other.ability.perma_bonus = other.ability.perma_bonus or 0
				other.ability.perma_bonus = other.ability.perma_bonus + bonus_base
	
				if had_bonus then
					card.ability.extra.bonus_base = bonus_base + bonus_base_dop
					return {
						message = localize('k_val_up'),
						colour = G.C.MONEY
					}
				else
					card.ability.extra.bonus_base = 5
					return {
						message = localize('k_reset'),
						colour = G.C.MONEY
					}
				end
			end
		end
	end

	-- Не смешная шутка
	if mod_obj ~= nil then
		local no_riff_raff = SMODS.Joker:new("Не смешная шутка", "no_riff_raff", {extra = {bonus_base_dop = 2, joker1 = "j_riff_raff", joker2 = "j_misprint"}, mult = 0}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_no_riff_raff", mod_obj.path, "j_no_riff_raff.png", 71, 95, "asset_atli"):register();
		no_riff_raff:register()

		function SMODS.Jokers.j_no_riff_raff.loc_def(card)
			return {card.ability.mult, card.ability.extra.bonus_base_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_no_riff_raff.calculate(card, context)
			if context.joker_main and card.ability.mult > 0 then
					return {
						extra = {
							mult_mod = card.ability.mult,
							message = localize {
							type = 'variable',
							key = 'a_mult',
							vars = {card.ability.mult}
						},
						colour = G.C.MULT
					}
				}
			end
			if context.setting_blind then
				local max_slots = G.jokers.config.card_limit - #G.jokers.cards
				local created = 0

				while max_slots > 0 and pseudorandom('joker_splitter') < 0.6 do
					local card_new = create_card('Joker', G.jokers, nil, 0.1, nil, nil, nil, nil)
					card_new:add_to_deck()
					G.jokers:emplace(card_new)
					card_new:start_materialize()

					max_slots = max_slots - 1
					created = created + 1
				end

				card.ability.mult = card.ability.mult + created * card.ability.extra.bonus_base_dop
			end
		end
	end

	-- Купон постояльца
	if mod_obj ~= nil then	
		local inflation = SMODS.Joker:new("Купон постояльца", "inflation", {extra = {bonus_dollar = 2, joker1 = "j_gift", joker2 = "j_greedy_joker"}, mult = 8}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_inflation", mod_obj.path, "j_inflation.png", 71, 95, "asset_atli"):register();
		inflation:register()

		function SMODS.Jokers.j_inflation.loc_def(card)
			return {card.ability.mult, card.ability.extra.bonus_dollar,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_inflation.calculate(card, context)
			if context.joker_main then
				local threes = 0
				for i = 1, #context.scoring_hand do
					if SMODS.Suits[context.scoring_hand[i].base.suit].key == 'Diamonds' then
						threes = threes + 1
					end
				end

				local my_pos = nil
				for i = 1, #G.jokers.cards do
					if G.jokers.cards[i] == card then
						my_pos = i
						break
					end
				end

				if threes > 1 then
					local bonus = card.ability.extra.bonus_dollar

					local function boost_value(c)
						if c then
							c.ability.extra_value = (c.ability.extra_value or 0) + bonus
							c:set_cost()
						end
					end

					if not context.blueprint then
						boost_value(G.jokers.cards[my_pos])
						boost_value(G.jokers.cards[my_pos - 1])
						boost_value(G.jokers.cards[my_pos + 1])
					end

					return {
						extra = {
							mult_mod = card.ability.mult,
							message = localize {
								type = 'variable',
								key = 'a_mult',
								vars = {card.ability.mult}
							},
							colour = G.C.MULT
						}
					}
				end
			end
		end
	end

	-- Золотой янтарь
	if mod_obj ~= nil then
		local super_greedy_joker = SMODS.Joker:new("Золотой янтарь", "super_greedy_joker", {extra = {
		dollar = 1, dollar_bonus = 1, uses = 0, joker1 = "j_rough_gem", joker2 = "j_greedy_joker"
		}}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_super_greedy_joker", mod_obj.path, "j_super_greedy_joker.png", 71, 95, "asset_atli"):register();
		super_greedy_joker:register()

		function SMODS.Jokers.j_super_greedy_joker.loc_def(card)
			return {math.floor(card.ability.extra.dollar), card.ability.extra.dollar_bonus,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_super_greedy_joker.calculate(card, context)
			if context.end_of_round and not context.repetition and not context.individual and not context.blueprint then
				card.ability.extra.dollar = 1
				card.ability.extra.uses = 0
			end

			if context.individual and context.cardarea == G.play and context.other_card:is_suit('Diamonds') then
				local money = math.floor(card.ability.extra.dollar)
				G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + money
				G.E_MANAGER:add_event(Event({
					func = function()
						G.GAME.dollar_buffer = 0
						return true
					end
				}))

				card.ability.extra.uses = (card.ability.extra.uses or 0) + 1
				if card.ability.extra.uses % 3 == 0 then
					card.ability.extra.dollar = card.ability.extra.dollar + card.ability.extra.dollar_bonus
				end	

				return {
					dollars = money,
					card = card,
				}
			end
		end

		function SMODS.Jokers.j_super_greedy_joker.update(self, _, _)
			if G.STAGE == G.STAGES.RUN and self.added_to_deck then
				if G.deck then
					for i, v in pairs(G.deck.cards) do
						if not v:is_suit('Diamonds') then
							v:set_debuff(true)
						end
					end
				end
				if G.hand then
					for i, v in pairs(G.hand.cards) do
						if not v:is_suit('Diamonds') then
							v:set_debuff(true)
						end
					end
				end
			end
		end
	end
	
	-- Гаремный джокер
	if mod_obj ~= nil then
		local harem = SMODS.Joker:new("Гаремный джокер", "harem", {extra = {mult = 12, megamult = 24, joker1 = "j_lusty_joker", joker2 = "j_shoot_the_moon"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_harem", mod_obj.path, "j_harem.png", 71, 95, "asset_atli"):register();
		harem:register()

		function SMODS.Jokers.j_harem.loc_def(card)
			return {card.ability.extra.mult, card.ability.extra.megamult,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_harem.calculate(card, context)
			if context.individual and context.cardarea == G.play then
				local is_queen = SMODS.Ranks[context.other_card.base.value].key == "Queen"
				if is_queen then
					local suit_key = SMODS.Suits[context.other_card.base.suit].key
	
					if suit_key == 'Hearts' then
						local suits = {'Diamonds', 'Clubs', 'Spades'}
						local new_suit = suits[math.random(#suits)]

						if not context.blueprint then
							SMODS.change_base(context.other_card, new_suit)
						end

						return {
							message = localize({ type = "variable", key = "a_mult", vars = {card.ability.extra.megamult} }),
							mult_mod = card.ability.extra.megamult,
							colour = G.C.MULT,
						}
					else
						if not context.blueprint then
							SMODS.change_base(context.other_card, 'Hearts')
						end

						return {
							message = localize({ type = "variable", key = "a_mult", vars = {card.ability.extra.mult} }),
							mult_mod = card.ability.extra.mult,
							colour = G.C.MULT,
						}
					end
				end
			end
		end	
	end

	-- Багряный рубин
	if mod_obj ~= nil then
		local ruby = SMODS.Joker:new("Багряный рубин", "ruby", {extra = {chips = 80, mult = 8, Xmult = 2, odds = 3, joker1 = "j_lusty_joker", joker2 = "j_bloodstone"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_ruby", mod_obj.path, "j_ruby.png", 71, 95, "asset_atli"):register();
		ruby:register()

		
		function SMODS.Jokers.j_ruby.loc_def(card)
			return {card.ability.extra.chips, card.ability.extra.mult, card.ability.extra.Xmult, card.ability.extra.odds,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'},
			G.GAME.probabilities.normal}
		end

		function SMODS.Jokers.j_ruby.calculate(card, context)
			if context.individual and context.cardarea == G.play and context.other_card:is_suit('Hearts') and pseudorandom('j_ruby') < G.GAME.probabilities.normal/card.ability.extra.odds then
				local chips = card.ability.extra.chips
				local mult = card.ability.extra.mult
				local xmult = card.ability.extra.Xmult
				return {
					message = string.format("+%d фишек, +%d множ., x%d множ.", chips, mult, xmult),
					chip_mod = chips,
					mult_mod = mult,
					Xmult_mod = xmult,
					colour = G.C.MULT
				}
			end
		end	
	end

	-- Граф дракула
	if mod_obj ~= nil then
		local count_dracula = SMODS.Joker:new("Граф дракула", "count_dracula", {extra = {Xmult_dop = 0.1, Xmult_hearts_dop = 0.3, joker1 = "j_vampire", joker2 = "j_bloodstone"}, x_mult = 1},
		{ x = 0, y = 0 }, nil, "Hybrid", 10, true, false, true, true, true)
		SMODS.Sprite:new("j_count_dracula", mod_obj.path, "j_count_dracula.png", 71, 95, "asset_atli"):register();
		count_dracula:register()

		function SMODS.Jokers.j_count_dracula.loc_def(card)
			return {card.ability.extra.Xmult_dop, card.ability.extra.Xmult_hearts_dop, card.ability.x_mult,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_count_dracula.calculate(card, context)
			if context.cardarea == G.play and context.individual and context.other_card == context.scoring_hand[1] and not context.blueprint then
				local enhanced = {}
				for _, v in ipairs(context.scoring_hand) do
					local is_upgraded = v.config.center ~= G.P_CENTERS.c_base
					local is_heart = v:is_suit("Hearts", true, false)
					if is_upgraded and not v.debuff and not v.vampired then
						if is_heart then
							v.vampired = true
							v:set_ability(G.P_CENTERS.c_base, nil, true)
							G.E_MANAGER:add_event(Event({
								func = function()
									v:juice_up()
									v.vampired = nil
									return true
								end
							}))
						end
						table.insert(enhanced, {card = v, is_heart = is_heart})
					end
				end
		
				if #enhanced > 0 then
					for _, info in ipairs(enhanced) do
						if info.is_heart then
							card.ability.x_mult = card.ability.x_mult + card.ability.extra.Xmult_hearts_dop
						else
							card.ability.x_mult = card.ability.x_mult + card.ability.extra.Xmult_dop
						end
					end
					return {
						message = localize{type='variable', key='a_xmult', vars={card.ability.x_mult}},
						colour = G.C.MULT,
						card = card
					}
				end
			end

			if context.joker_main and card.ability.x_mult > 1 then
				return {
					message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.x_mult}}),
					Xmult_mod = card.ability.x_mult
				}
			end
		end			
	end

	-- На острие
	if mod_obj ~= nil then
		local on_the_cutting_edge = SMODS.Joker:new("На острие", "on_the_cutting_edge", {extra = {joker1 = "j_arrowhead", joker2 = "j_wrathful_joker"}, chips = 120},
		{ x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_on_the_cutting_edge", mod_obj.path, "j_on_the_cutting_edge.png", 71, 95, "asset_atli"):register();
		on_the_cutting_edge:register()

		function SMODS.Jokers.j_on_the_cutting_edge.loc_def(card)
			return {card.ability.chips,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_on_the_cutting_edge.calculate(card, context)
			if context.joker_main and not context.blueprint then
				local threes = 0
				if G.GAME.current_round.hands_left > 1 then
					for i = 1, #context.scoring_hand do
						if SMODS.Suits[context.scoring_hand[i].base.suit].key == 'Spades' then
							threes = threes + 1
						end
					end
				if threes > 0 then
					G.GAME.current_round.hands_left = G.GAME.current_round.hands_left - 1
						return {
							message = localize('k_minushand'),
							colour = G.C.MULT
						}
					end
				end
			end

			if context.individual and context.cardarea == G.play and context.other_card:is_suit('Spades')then
				local chips = card.ability.chips
				return {
					message = localize {
                        type = 'variable',
                        key = 'a_chips',
                        vars = {card.ability.chips}
					},
					chip_mod = chips,
					colour = G.C.CHIPS
				}
			end
		end			
	end

	-- Острая фасоль
	if mod_obj ~= nil then
		local hot_beans = SMODS.Joker:new("Острая фасоль", "hot_beans", {extra = {hand_size = 5, joker1 = "j_turtle_bean", joker2 = "j_wrathful_joker"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 8, true, false, false, true, true)
		SMODS.Sprite:new("j_hot_beans", mod_obj.path, "j_hot_beans.png", 71, 95, "asset_atli"):register();
		hot_beans:register()

		function SMODS.Jokers.j_hot_beans.loc_def(card)
			return {card.ability.extra.hand_size,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_hot_beans.calculate(card, context)
			if context.joker_main and not context.blueprint then
				local threes = 0
				for i = 1, #context.scoring_hand do
					if SMODS.Suits[context.scoring_hand[i].base.suit].key == 'Spades' then
						threes = threes + 1
					end
				end
				if threes < 3 then
					card.ability.extra.hand_size = card.ability.extra.hand_size - 1
					G.hand:change_size(-1)
					return {
						message = localize('k_minushand'),
						colour = G.C.MULT
					}
				end
			end
			if context.cardarea == G.jokers then
				if context.after and not context.blueprint then
					if card.ability.extra.hand_size == 0 then
						G.E_MANAGER:add_event(Event({
							func = function()
								play_sound('tarot1')
								card.T.r = -0.2
								card:juice_up(0.3, 0.4)
								card.states.drag.is = true
								card.children.center.pinch.x = true
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
									func = function()
											G.jokers:remove_card(card)
											card:remove()
											card = nil
										return true; end})) 
								return true
							end
						})) 
						return {
							message = localize('k_eaten_ex'),
							colour = G.C.FILTER
						}
					end
				end
			end
		end
	end

	-- Полные карманы
	if mod_obj ~= nil then
		local full_pockets = SMODS.Joker:new("Полные карманы", "full_pockets", {extra = {mult = 4, current_mult = 0, joker1 = "j_gluttenous_joker", joker2 = "j_erosion"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_full_pockets", mod_obj.path, "j_full_pockets.png", 71, 95, "asset_atli"):register();
		full_pockets:register()

		function SMODS.Jokers.j_full_pockets.loc_def(card)
			return {card.ability.extra.mult, card.ability.extra.current_mult, G.GAME.starting_deck_size / 4,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'},
		G.GAME.starting_deck_size}
		end

		function SMODS.Jokers.j_full_pockets.calculate(card, context)
			if context.joker_main then
				local count = 0
				local total_count = 0
           		for k, v in pairs(G.playing_cards) do
					total_count = total_count + 1
                	if v:is_suit('Clubs') == true then count = count + 1 end
           	    end

				if count > G.GAME.starting_deck_size / 4 then
					card.ability.extra.current_mult = (count - G.GAME.starting_deck_size / 4) * card.ability.extra.mult
				end

				local bonus = (G.GAME.starting_deck_size - total_count) * card.ability.extra.mult
				if bonus > 0 then
					card.ability.extra.current_mult = ((count - G.GAME.starting_deck_size / 4) * card.ability.extra.mult) + bonus
				end

				return {
					extra = {
					    mult_mod = card.ability.extra.current_mult,
						message = localize {
                        type = 'variable',
                        key = 'a_mult',
                        vars = {card.ability.extra.current_mult}
					},
					colour = G.C.MULT
                }
           		}
			end
		end

		function SMODS.Jokers.j_full_pockets.update(self, _, _)
			if G.STAGE == G.STAGES.RUN and self.added_to_deck then
				local count = 0
				local total_count = 0
           		for k, v in pairs(G.playing_cards) do
					total_count = total_count + 1
                	if v:is_suit('Clubs') == true then count = count + 1 end
           	    end

				if count > G.GAME.starting_deck_size / 4 then
					self.ability.extra.current_mult = (count - G.GAME.starting_deck_size / 4) * self.ability.extra.mult
				end

				local bonus = (G.GAME.starting_deck_size - total_count) * self.ability.extra.mult
				if bonus > 0 then
					self.ability.extra.current_mult = ((count - G.GAME.starting_deck_size / 4) * self.ability.extra.mult) + bonus
				end
			end
		end
	end

	-- Половина флага
	if mod_obj ~= nil then
		local half_flag = SMODS.Joker:new("Половина флага", "half_flag", {extra = {chips = 10, total_chips = 0, joker1 = "j_half", joker2 = "j_banner"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_half_flag", mod_obj.path, "j_half_flag.png", 71, 95, "asset_atli"):register();
		half_flag:register()

		function SMODS.Jokers.j_half_flag.loc_def(card)
			return {card.ability.extra.chips, card.ability.extra.total_chips,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_half_flag.calculate(card, context)
			if context.joker_main and card.ability.extra.total_chips > 0 then
				local chips = card.ability.extra.total_chips
				return {
					message = localize {
                        type = 'variable',
                        key = 'a_chips',
                        vars = {card.ability.extra.total_chips}
					},
					chip_mod = chips,
					colour = G.C.CHIPS
				}
			end

			if context.pre_discard and not context.blueprint and #context.full_hand < 4 then
				card.ability.extra.total_chips =  card.ability.extra.total_chips + card.ability.extra.chips
				return {
					message = localize {
                        type = 'variable',
                        key = 'a_chips',
                        vars = {card.ability.extra.chips}
					},
					colour = G.C.CHIPS
				}
			end
		end
	end

	-- Истинное безумие
	if mod_obj ~= nil then
		local half_flag = SMODS.Joker:new("Истинное безумие", "true_madness", {extra = {Xmult_bonus = 0.5, Xmult_bonus_dop = 0.3, joker1 = "j_madness", joker2 = "j_obelisk"}, x_mult = 1},
		{ x = 0, y = 0 }, nil, "Hybrid", 15, true, false, true, true, true)
		SMODS.Sprite:new("j_true_madness", mod_obj.path, "j_true_madness.png", 71, 95, "asset_atli"):register();
		half_flag:register()

		function SMODS.Jokers.j_true_madness.loc_def(card)
			return {card.ability.extra.Xmult_bonus, card.ability.x_mult, card.ability.extra.Xmult_bonus_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_true_madness.calculate(card, context)
			if context.joker_main and card.ability.x_mult > 1 then
				local Xmult = card.ability.x_mult
				return {
					message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = {card.ability.x_mult}
					},
					Xmult_mod = Xmult,
					colour = G.C.MULT
				}
			end

			if context.setting_blind and not card.getting_sliced and not context.blueprint and not context.blind.boss then
                card.ability.x_mult = card.ability.x_mult + card.ability.extra.Xmult_bonus

                local destructable_jokers = {}

                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i] ~= card and G.jokers.cards[i] ~= card and not G.jokers.cards[i].getting_sliced then destructable_jokers[#destructable_jokers+1] = G.jokers.cards[i] end
                end

                local joker_to_destroy = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('true_madness')) or nil

                if joker_to_destroy and not (context.blueprint_card or card).getting_sliced then 
                    joker_to_destroy.getting_sliced = true
                    G.E_MANAGER:add_event(Event({func = function()
                        (context.blueprint_card or card):juice_up(0.8, 0.8)
                        joker_to_destroy:start_dissolve({G.C.RED}, nil, 1.6)
                    return true end }))
                end

				if joker_to_destroy == nil then
					card.ability.x_mult = 1
					return
					{
						message = localize('k_null'),
						colour = G.C.MULT
					}
				else
					card.ability.extra.Xmult_bonus = card.ability.extra.Xmult_bonus + card.ability.extra.Xmult_bonus_dop
					if not (context.blueprint_card or card).getting_sliced then
						card_eval_status_text((context.blueprint_card or card), 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {card.ability.x_mult}}})
					end
				end    
			end
		end
	end

	-- Маньяк джокер
	if mod_obj ~= nil then
		local half_flag = SMODS.Joker:new("Маньяк джокер", "maniac_joker", {extra = {rare = 1, joker1 = "j_madness", joker2 = "j_ceremonial"}, x_mult = 1},
		{ x = 0, y = 0 }, nil, "Hybrid", 10, true, false, true, true, true)
		SMODS.Sprite:new("j_maniac_joker", mod_obj.path, "j_maniac_joker.png", 71, 95, "asset_atli"):register();
		half_flag:register()

		function SMODS.Jokers.j_maniac_joker.loc_def(card)
			local rarity_map = {
				[1] = localize('k_common'),    
				[2] = localize('k_uncommon'),   
				[3] = localize('k_rare'),      
			}
			
			local rarity_name = rarity_map[card.ability.extra.rare] or "???"
		
			return {
				rarity_name,
				card.ability.x_mult,
				localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
				localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}
			}
		end

		function SMODS.Jokers.j_maniac_joker.calculate(card, context)
			if context.joker_main and card.ability.x_mult > 0 then
				local Xmult = card.ability.x_mult
				return {
					message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = {card.ability.x_mult}
					},
					Xmult_mod = Xmult,
					colour = G.C.MULT
				}
			end

			if context.setting_blind and not card.getting_sliced and not context.blueprint and not context.blind.boss then
                local my_pos = nil
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i] == card then my_pos = i; break end
                end
                if my_pos and G.jokers.cards[my_pos+1] and G.jokers.cards[my_pos+1].config.center.rarity == card.ability.extra.rare and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
					card.ability.extra.rare = get_random_rarity()
                    local sliced_card = G.jokers.cards[my_pos+1]
                    sliced_card.getting_sliced = true
                    G.GAME.joker_buffer = G.GAME.joker_buffer - 1
                    G.E_MANAGER:add_event(Event({func = function()
                        G.GAME.joker_buffer = 0
                        card.ability.x_mult = card.ability.x_mult + sliced_card.sell_cost / 4
                        card:juice_up(0.8, 0.8)
                        sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
                        play_sound('slice1', 0.96+math.random()*0.08)
                    return true end }))
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.x_mult+(sliced_card.sell_cost/4)}}, colour = G.C.RED, no_juice = true})
				else
					card.ability.x_mult = card.ability.x_mult / 2
                end  
			end
		end
	end

	-- Абсолютная пустота
	if mod_obj ~= nil then
		local Absolute_emptiness = SMODS.Joker:new("Absolute emptiness", "Absolute_emptiness", {extra = {Xmult = 0, active = true, joker1 = "j_stencil", joker2 = "j_invisible"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 15, true, false, true, true, true)
		SMODS.Sprite:new("j_Absolute_emptiness", mod_obj.path, "j_Absolute_emptiness.png", 71, 95, "asset_atli"):register();
		Absolute_emptiness:register()

		function SMODS.Jokers.j_Absolute_emptiness.loc_def(card)	
			return {
				card.ability.extra.Xmult,
				localize{type = 'variable', key = card.ability.extra.active and 'emptiness_active' or 'emptiness_inactive'},
				localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
				localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}
			}
		end

		function SMODS.Jokers.j_Absolute_emptiness.calculate(card, context)
			if context.joker_main and card.ability.extra.Xmult > 0 then
				local Xmult = card.ability.extra.Xmult
				return {
					message = localize {
						type = 'variable',
						key = 'a_xmult',
						vars = { Xmult }
					},
					Xmult_mod = Xmult,
					colour = G.C.MULT
				}
			end

			if context.end_of_round and not context.individual and not context.repetition and not context.blueprint and G.GAME.blind.boss and card.ability.extra.active == true then
				local jokers = {}
				for i = 1, #G.jokers.cards do
					if G.jokers.cards[i] ~= card then
						table.insert(jokers, G.jokers.cards[i])
					end
				end

				if #jokers > 0 then
					if #G.jokers.cards < G.jokers.config.card_limit then
						local chosen_joker = pseudorandom_element(jokers, pseudoseed('absolute_emptiness'))

						local copy = copy_card(chosen_joker, nil, nil, nil, chosen_joker.edition and chosen_joker.edition.negative)
						copy:add_to_deck()
						G.jokers:emplace(copy)
						card.ability.extra.active = false

						card_eval_status_text(
							context.blueprint_card or card,
							"extra",
							nil,
							nil,
							nil,
							{
								message = localize("k_duplicated_ex"),
								colour = G.C.RARITY.cry_epic
							}
						)
					else
						card_eval_status_text(
							context.blueprint_card or card,
							"extra",
							nil,
							nil,
							nil,
							{
								message = localize("k_no_room_ex"),
								colour = G.C.RARITY.cry_rare
							}
						)
					end
				else
					card_eval_status_text(
						context.blueprint_card or card,
						"extra",
						nil,
						nil,
						nil,
						{
							message = localize("k_no_other_jokers"),
							colour = G.C.RARITY.cry_common
						}
					)
				end

				return nil, true
			end
		end

		function SMODS.Jokers.j_Absolute_emptiness.update(self, _, _)
			if G.STAGE == G.STAGES.RUN then
				self.ability.extra.Xmult = (G.jokers.config.card_limit - #G.jokers.cards) * 1.5
				for i = 1, #G.jokers.cards do
					if G.jokers.cards[i].ability.name == 'Joker Stencil' or G.jokers.cards[i].ability.name == 'Absolute emptiness' then self.ability.extra.Xmult = self.ability.extra.Xmult + 1.5 end
				end
			end
		end
	end

	-- Трафарет банана
	if mod_obj ~= nil then
		local banana_stencil = SMODS.Joker:new("Трафарет банана", "banana_stencil", {extra = {Xmult = 5, Xmult_food = 2, joker1 = "j_stencil", joker2 = "j_cavendish"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 10, true, false, true, true, true)
		SMODS.Sprite:new("j_banana_stencil", mod_obj.path, "j_banana_stencil.png", 71, 95, "asset_atli"):register();
		banana_stencil:register()

		function SMODS.Jokers.j_banana_stencil.loc_def(card)	
	    	return {
				card.ability.extra.Xmult, card.ability.extra.Xmult_food,
				localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
				localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}
			}
		end

		function SMODS.Jokers.j_banana_stencil.calculate(card, context)
			if context.joker_main and card.ability.extra.Xmult > 0 then
				local Xmult = card.ability.extra.Xmult
				return {
					message = localize {
						type = 'variable',
						key = 'a_xmult',
						vars = { Xmult }
					},
					Xmult_mod = Xmult,
					colour = G.C.MULT
				}
			end
			if context.other_joker then
				local key = context.other_joker.config.center.key
				local edible_keys = {
					j_gros_michel = true,
					j_egg = true,
					j_ice_cream = true,
					j_cavendish = true,
					j_diet_cola = true,
					j_popcorn = true,
					j_ramen = true,
					j_turtle_bean = true,
					j_seltzer = true,
					j_hot_beans = true,
					j_mathematically_correct_beans = true,
					j_banana_stencil = true
				}

				if edible_keys[key] then
					G.E_MANAGER:add_event(Event({
						func = function()
							context.other_joker:juice_up(0.5, 0.5)
							return true
						end
					}))

					local Xmult = card.ability.extra.Xmult_food
					return {
						message = localize {
							type = 'variable',
							key = 'a_xmult',
							vars = { Xmult }
						},
						Xmult_mod = Xmult,
						colour = G.C.MULT
					}
				end
			end
		end
	end

	-- Четверной джокер
	if mod_obj ~= nil then
		local Quadruple_Joker = SMODS.Joker:new("Четверной джокер", "quadruple_joker", {extra = {chips = 0, chip_mod = 16, Xmult_food = 2, joker1 = "j_square", joker2 = "j_four_fingers"}},
		{ x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_quadruple_joker", mod_obj.path, "j_quadruple_joker.png", 71, 95, "asset_atli"):register();
		Quadruple_Joker:register()

		function SMODS.Jokers.j_quadruple_joker.loc_def(card)	
	    	return {
				card.ability.extra.chips, card.ability.extra.chip_mod,
				localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
				localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}
			}
		end

		function SMODS.Jokers.j_quadruple_joker.calculate(card, context)
			if context.before and #context.full_hand == 4 and not context.blueprint then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.CHIPS,
                    card = card
                }
            end
			if context.joker_main then
				local chips = card.ability.extra.chips or 0
				local chip_mod = card.ability.extra.chip_mod or 0

				return {
                	message = localize{type='variable',key='a_chips',vars={card.ability.extra.chips}},
                	chip_mod = card.ability.extra.chips, 
                	colour = G.C.CHIPS
           		}  
			end         
		end
	end

	-- Деловая хватка
	if mod_obj ~= nil then
		local business_acumen = SMODS.Joker:new("Деловая хватка", "business_acumen", {extra = {
		dollar = 2, dollar_bonus = 15, odds = 2, cards_triggered = 0, joker1 = "j_four_fingers", joker2 = "j_business"
		}}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_business_acumen", mod_obj.path, "j_business_acumen.png", 71, 95, "asset_atli"):register();
		business_acumen:register()

		function SMODS.Jokers.j_business_acumen.loc_def(card)
			return {card.ability.extra.dollar, card.ability.extra.dollar_bonus, card.ability.extra.odds,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'},
			G.GAME.probabilities.normal}
		end

		function SMODS.Jokers.j_business_acumen.calculate(card, context)
			if context.setting_blind and not context.blueprint then
				card.ability.extra.cards_triggered = 0
			end

			if context.individual and context.cardarea == G.play and context.other_card:is_face() then
				if pseudorandom('j_business_acumen') < G.GAME.probabilities.normal / card.ability.extra.odds then
					card.ability.extra.cards_triggered = card.ability.extra.cards_triggered + 1
					
					if card.ability.extra.cards_triggered == 4 then
						local bonus = card.ability.extra.dollar_bonus
						return {
							dollars = bonus,
							card = card,
						}
					end

					if card.ability.extra.cards_triggered > 4 then
						local bonus = card.ability.extra.dollar
						return {
							dollars = -bonus,
							card = card,
						}
					end

					local money = card.ability.extra.dollar
					G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + money

					G.E_MANAGER:add_event(Event({ func = function()
						G.GAME.dollar_buffer = 0
						return true
					end }))

					return {
						dollars = money,
						card = card,
					}
				end
			end
		end
	end

	-- Золотая карта
	if mod_obj ~= nil then
		local gold_card = SMODS.Joker:new("Золотая карта", "gold_card", {extra = {
		bonus = 4, affects_debt = true, joker1 = "j_credit_card", joker2 = "j_egg"
		}}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, false, true, true)
		SMODS.Sprite:new("j_gold_card", mod_obj.path, "j_gold_card.png", 71, 95, "asset_atli"):register();
		gold_card:register()

		function SMODS.Jokers.j_gold_card.loc_def(card)
			return {card.ability.extra.bonus,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_gold_card.calculate(card, context)
			if context.end_of_round and not context.repetition and not context.individual and not context.blueprint then
				card.ability.extra_value = (card.ability.extra_value or 0) + card.ability.extra.bonus
				card:set_cost()

				return {
					message = localize('k_val_up'),
					colour = G.C.MONEY
				}
			end
		end
	end

	-- Депозит
	if mod_obj ~= nil then
		local deposit = SMODS.Joker:new("Депозит", "deposit", {extra = {
		bonus = 1, bonus_extra = 2.5, joker1 = "j_credit_card", joker2 = "j_business"
		}}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, false, true, true)
		SMODS.Sprite:new("j_deposit", mod_obj.path, "j_deposit.png", 71, 95, "asset_atli"):register();
		deposit:register()

		function SMODS.Jokers.j_deposit.loc_def(card)
			return {card.ability.extra.bonus, card.ability.extra.bonus_extra,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_deposit.calculate(card, context)
			if context.end_of_round and not context.individual and G.GAME.blind.boss and not context.repetition and not context.blueprint then
				local bonus = math.floor((card.sell_cost * (card.ability.extra.bonus_extra - 1)) + 0.5)
				card.ability.extra_value = (card.ability.extra_value or 0) + bonus
				card:set_cost()
				return {
					message = localize('k_val_up'),
					colour = G.C.MONEY
				}
			end

			if context.individual and context.cardarea == G.play and context.other_card:is_face() and not context.blueprint then
				local money = card.ability.extra.bonus
				if dollars_geq(money + G.GAME.bankrupt_at) then
					ease_dollars(-money)
					card.ability.extra_value = (card.ability.extra_value or 0) + math.floor(money + 0.5)
					card:set_cost()
					return {
						message = localize('k_val_up'),
						colour = G.C.MONEY
					}   
				end 
			end
		end
	end

	-- Банановое смузи
	if mod_obj ~= nil then
		local banana_smoothie = SMODS.Joker:new("Банановое смузи", "banana_smoothie", {extra = {odds = 6, joker1 = "j_ceremonial", joker2 = "j_gros_michel"}, mult = 0}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_banana_smoothie", mod_obj.path, "j_banana_smoothie.png", 71, 95, "asset_atli"):register();
		banana_smoothie:register()

		function SMODS.Jokers.j_banana_smoothie.loc_def(card)
			return {card.ability.mult, card.ability.extra.odds,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'},
			G.GAME.probabilities.normal}
		end

		function SMODS.Jokers.j_banana_smoothie.calculate(card, context)
			if context.setting_blind and not card.getting_sliced and not context.blueprint then
				local my_pos = nil
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i] == card then my_pos = i; break end
                end
                if my_pos and G.jokers.cards[my_pos+1] and not card.getting_sliced and not G.jokers.cards[my_pos+1].ability.eternal and not G.jokers.cards[my_pos+1].getting_sliced then 
                    local sliced_card = G.jokers.cards[my_pos+1]
                    sliced_card.getting_sliced = true
                    G.GAME.joker_buffer = G.GAME.joker_buffer - 1

					G.E_MANAGER:add_event(Event({func = function()
                        G.GAME.joker_buffer = 0
                        card.ability.mult = card.ability.mult + sliced_card.sell_cost*2
                        card:juice_up(0.8, 0.8)
                        sliced_card:start_dissolve({HEX("57ecab")}, nil, 1.6)
                        play_sound('slice1', 0.96+math.random()*0.08)
                    	return true end }))

                    	card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.mult+2*sliced_card.sell_cost}}, colour = G.C.RED, no_juice = true})

					if pseudorandom('j_banana_smoothie') < G.GAME.probabilities.normal / card.ability.extra.odds then
						if sliced_card.edition == nil or sliced_card.edition.negative == nil then
							local edible_keys = {
								'j_gros_michel', 'j_egg', 'j_ice_cream', 'j_cavendish',
								'j_diet_cola', 'j_popcorn', 'j_ramen', 'j_turtle_bean',
								'j_seltzer', 'j_hot_beans', 'j_mathematically_correct_beans', 'j_banana_stencil'
							}

							G.E_MANAGER:add_event(Event({delay = 1.6, func = function()
							local random_key = edible_keys[math.random(#edible_keys)]
							local new_card = create_card('Joker', G.jokers, 0, nil, nil, nil, random_key)
							G.jokers:emplace(new_card)
							new_card:add_to_deck()
							return true
							end}))
						end
					end
                end
			end

			if context.joker_main and card.ability.mult > 0 then
				return {
					message = localize{type='variable', key='a_mult', vars={card.ability.mult}},
					mult_mod = card.ability.mult
				}
			end
		end
	end

	-- Пьяный флаг
	if mod_obj ~= nil then
		local drunken_flag = SMODS.Joker:new("Пьяный флаг", "drunken_flag", {extra = {chips = 70, joker1 = "j_banner", joker2 = "j_drunkard"}, d_size = 1}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_drunken_flag", mod_obj.path, "j_drunken_flag.png", 71, 95, "asset_atli"):register();
		drunken_flag:register()

		function SMODS.Jokers.j_drunken_flag.loc_def(card)
			return {card.ability.extra.chips, card.ability.d_size,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_drunken_flag.calculate(card, context)
			if context.joker_main then
                return {
                    message = localize{type='variable',key='a_chips',vars={G.GAME.current_round.discards_left*card.ability.extra.chips}},
                    chip_mod = G.GAME.current_round.discards_left*card.ability.extra.chips
                }
			end

			if context.pre_discard and not context.blueprint then
				card.debuff = true
			end

			if context.setting_blind and not context.blueprint then
				card.debuff = false
			end
		end
	end

	-- Суперзлодей
	if mod_obj ~= nil then
		local Supervillain = SMODS.Joker:new("Суперзлодей", "supervillain", {extra = {mult = 1, joker1 = "j_burglar", joker2 = "j_mystic_summit"}}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_supervillain", mod_obj.path, "j_supervillain.png", 71, 95, "asset_atli"):register();
		Supervillain:register()

		function SMODS.Jokers.j_supervillain.loc_def(card)
			return {card.ability.extra.mult * math.pow(2, G.GAME.current_round.hands_played) or 1,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_supervillain.calculate(card, context)
			if context.joker_main then
				local hands_played = G.GAME.current_round.hands_played
				local multiplier = card.ability.extra.mult * math.pow(2, hands_played)

				return {
					extra = {
						mult_mod = multiplier,
						message = localize {
							type = 'variable',
							key = 'a_mult',
							vars = {multiplier}
						},
						colour = G.C.MULT
					}
				}
			end


			if context.setting_blind and not context.blueprint_card and not context.getting_sliced then
				local plus = G.GAME.current_round.discards_left
                G.E_MANAGER:add_event(Event({func = function()
					ease_hands_played(plus)
                    ease_discard(-plus)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {plus}}})
                return true end }))
            end
		end
	end

	-- Музейный вор
	if mod_obj ~= nil then
		local museum_thief = SMODS.Joker:new("Музейный вор", "museum_thief", {extra = {odds = 3, hand = 3, joker1 = "j_burglar", joker2 = "j_marble"}}, { x = 0, y = 0 }, nil, "Hybrid", 10, true, false, true, true, true)
		SMODS.Sprite:new("j_museum_thief", mod_obj.path, "j_museum_thief.png", 71, 95, "asset_atli"):register();
		museum_thief:register()

		function SMODS.Jokers.j_museum_thief.loc_def(card)
			return {card.ability.extra.hand, card.ability.extra.odds,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'},
			G.GAME.probabilities.normal}
		end

		function SMODS.Jokers.j_museum_thief.calculate(card, context)
			if context.setting_blind and not context.blueprint_card and not context.getting_sliced then
				local plus = G.GAME.current_round.discards_left
                G.E_MANAGER:add_event(Event({func = function()
					ease_hands_played(card.ability.extra.hand)
                    ease_discard(-plus)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {card.ability.extra.hand}}})
                return true end }))
            end

			if context.setting_blind and not context.getting_sliced then
				G.E_MANAGER:add_event(Event({
                    func = function() 
                        local front = pseudorandom_element(G.P_CARDS, pseudoseed('museum_fr'))
                        G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                        local card = Card(G.play.T.x + G.play.T.w/2, G.play.T.y, G.CARD_W, G.CARD_H, front, G.P_CENTERS.m_stone, {playing_card = G.playing_card})
                        card:start_materialize({G.C.SECONDARY_SET.Enhanced})
                        G.play:emplace(card)
                        table.insert(G.playing_cards, card)
                        return true
                    end}))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_stone'), colour = G.C.SECONDARY_SET.Enhanced})

                G.E_MANAGER:add_event(Event({
                    func = function() 
                        G.deck.config.card_limit = G.deck.config.card_limit + 1
                        return true
                    end}))
                    draw_card(G.play,G.deck, 90,'up', nil)  

                playing_card_joker_effects({true})
			end

			if context.before and pseudorandom('j_museum_thief') < G.GAME.probabilities.normal / card.ability.extra.odds then
				G.playing_card = (G.playing_card and G.playing_card + 1) or 1

				local front = pseudorandom_element(G.P_CARDS, pseudoseed('museum_fr'))

				local _card = Card(
					G.deck.T.x + G.deck.T.w/2,
					G.deck.T.y,
					G.CARD_W,
					G.CARD_H,
					front,
					G.P_CENTERS.m_stone,
					{playing_card = G.playing_card}
				)
				_card:add_to_deck()
				G.deck.config.card_limit = G.deck.config.card_limit + 1

				G.deck:emplace(_card)

				table.insert(G.playing_cards, _card)

				_card.states.visible = nil

				G.E_MANAGER:add_event(Event({
					func = function()
						_card:start_materialize()
						return true
					end
				}))

				card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {
					message = localize('k_plus_stone'),
					colour = G.C.SECONDARY_SET.Enhanced
				})
				playing_card_joker_effects({true})
				return {
					playing_cards_created = {true}
				}
			end
		end
	end

	-- Каменноликий
	if mod_obj ~= nil then
		local stoneface = SMODS.Joker:new("Каменноликий", "stoneface", {extra = {dollar = 10, count = 3, joker1 = "j_faceless", joker2 = "j_marble"}}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_stoneface", mod_obj.path, "j_stoneface.png", 71, 95, "asset_atli"):register();
		stoneface:register()

		function SMODS.Jokers.j_stoneface.loc_def(card)
			return {card.ability.extra.dollar, card.ability.extra.count,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_stoneface.calculate(card, context)
			if context.setting_blind and not context.getting_sliced then
				G.E_MANAGER:add_event(Event({
                    func = function() 
                        local front = pseudorandom_element(G.P_CARDS, pseudoseed('museum_fr'))
                        G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                        local card = Card(G.play.T.x + G.play.T.w/2, G.play.T.y, G.CARD_W, G.CARD_H, front, G.P_CENTERS.m_stone, {playing_card = G.playing_card})
                        card:start_materialize({G.C.SECONDARY_SET.Enhanced})
                        G.play:emplace(card)
                        table.insert(G.playing_cards, card)
                        return true
                    end}))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_stone'), colour = G.C.SECONDARY_SET.Enhanced})

                G.E_MANAGER:add_event(Event({
                    func = function() 
                        G.deck.config.card_limit = G.deck.config.card_limit + 1
                        return true
                    end}))
                    draw_card(G.play,G.deck, 90,'up', nil)  

                playing_card_joker_effects({true})
			end

			if context.pre_discard then
				local stone_count = 0
				for _, c in ipairs(context.full_hand) do
					if c.config.center.key == 'm_stone' then
						stone_count = stone_count + 1
					end
				end

				if stone_count >= 3 then
					G.playing_card = (G.playing_card and G.playing_card + 1) or 1
					local front = pseudorandom_element(G.P_CARDS, pseudoseed('stoneface_fr'))
					local _card = Card(
						G.deck.T.x + G.deck.T.w/2,
						G.deck.T.y,
						G.CARD_W,
						G.CARD_H,
						front,
						G.P_CENTERS.m_stone,
						{playing_card = G.playing_card}
					)
					_card:add_to_deck()
					G.deck.config.card_limit = G.deck.config.card_limit + 1
					G.deck:emplace(_card)
					table.insert(G.playing_cards, _card)
					_card.states.visible = nil

					G.E_MANAGER:add_event(Event({
						func = function()
							_card:start_materialize()
							return true
						end
					}))

					card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {
						message = localize('k_plus_stone'),
						colour = G.C.SECONDARY_SET.Enhanced
					})

					local money = math.floor(card.ability.extra.dollar)
					G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + money
					G.E_MANAGER:add_event(Event({
						func = function()
							G.GAME.dollar_buffer = 0
							return true
						end
					}))
					playing_card_joker_effects({true})

					return {
						playing_cards_created = {true},
						dollars = money,
						card = card,
					}
				end
			end
		end
	end

	-- Бильярдный трюк
	if mod_obj ~= nil then
		local billiard_trick = SMODS.Joker:new("Бильярдный трюк", "billiard_trick", {extra = {odds = 2, Xmult = 3, joker1 = "j_8_ball", joker2 = "j_acrobat"}}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_billiard_trick", mod_obj.path, "j_billiard_trick.png", 71, 95, "asset_atli"):register();
		billiard_trick:register()

		function SMODS.Jokers.j_billiard_trick.loc_def(card)
			return {card.ability.extra.odds, card.ability.extra.Xmult,
			localize{type = 'name_text', key = 'tag_charm', set = 'Tag'},
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'},
			G.GAME.probabilities.normal}
		end

		function SMODS.Jokers.j_billiard_trick.calculate(card, context)
			if context.joker_main and G.GAME.current_round.hands_left == 0 then
				if pseudorandom('j_billiard_trick') < G.GAME.probabilities.normal/card.ability.extra.odds then
					G.E_MANAGER:add_event(Event({
                    func = (function()
                        add_tag(Tag('tag_charm'))
                        play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                        play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                        return true
                    end)
                }))
				end
                return {
                    message = localize{type='variable',key='a_xmult',vars={card.ability.extra.Xmult}},
                    Xmult_mod = card.ability.extra.Xmult
                }
            end
		end
	end

	-- Восьмизарядник
	if mod_obj ~= nil then
		local eight_shooter = SMODS.Joker:new("Восьмизарядник", "eight_shooter", {extra = {odds = 8, rep = 8, eight = 0, joker1 = "j_8_ball", joker2 = "j_hanging_chad"}}, { x = 0, y = 0 }, nil, "Hybrid", 5, true, false, true, true, true)
		SMODS.Sprite:new("j_eight_shooter", mod_obj.path, "j_eight_shooter.png", 71, 95, "asset_atli"):register();
		eight_shooter:register()

		function SMODS.Jokers.j_eight_shooter.loc_def(card)
			return {card.ability.extra.odds, card.ability.extra.rep,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'},
			G.GAME.probabilities.normal * (card.ability.extra.eight)}
		end

		function SMODS.Jokers.j_eight_shooter.calculate(card, context)
			if context.cardarea == G.play and context.repetition and context.other_card == context.scoring_hand[1] then
				if pseudorandom('j_eight_shooter') < (G.GAME.probabilities.normal * (card.ability.extra.eight))/card.ability.extra.odds then
                    return {
                        message = localize('k_again_ex'),
                        repetitions = card.ability.extra.rep,
                        card = card
                    }
				end
            end
		end

		function SMODS.Jokers.j_eight_shooter.update(self, _, _)
			if G.STAGE == G.STAGES.RUN and self.added_to_deck then
				local count = 0
				if G.hand then
					for k, v in pairs(G.hand.cards) do
						if v:get_id() == 8 then count = count + 1 end
					end
				end
				self.ability.extra.eight = count
			end
		end
	end

	-- Случайная мутация
	if mod_obj ~= nil then
		local random_mutation = SMODS.Joker:new("Случайная мутация", "random_mutation", {extra = {joker1 = "j_dna", joker2 = "j_misprint"}}, { x = 0, y = 0 }, nil, "Hybrid", 15, true, false, true, true, true)
		SMODS.Sprite:new("j_random_mutation", mod_obj.path, "j_random_mutation.png", 71, 95, "asset_atli"):register();
		random_mutation:register()

		function SMODS.Jokers.j_random_mutation.loc_def(card)
			return {
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_random_mutation.calculate(card, context)
			if context.before then
				if G.GAME.current_round.hands_played == 0 then
					if #context.full_hand == 1 then
						local base_card = context.full_hand[1]

						local count_weights = {1, 0.7, 0.4, 0.2}
						local total_weight = 0
						for _, w in ipairs(count_weights) do total_weight = total_weight + w end
						local rnd = pseudorandom('copy_amount') * total_weight
						local copy_count = 1
						for i, w in ipairs(count_weights) do
							rnd = rnd - w
							if rnd <= 0 then
								copy_count = i
								break
							end
						end

						local created = {}
						for i = 1, copy_count do
							G.playing_card = (G.playing_card and G.playing_card + 1) or 1
							local _card = copy_card(base_card, nil, nil, G.playing_card)

							local change_suit = pseudorandom('suit_' .. i) <= 0.20
							local change_rank = pseudorandom('rank_' .. i) <= 0.20

							if change_suit then
								local suits = {'Hearts', 'Diamonds', 'Clubs', 'Spades'}
								SMODS.change_base(_card, suits[math.random(1, 4)])	
							end

							if change_rank then
								local delta = pseudorandom('delta_' .. i) < 0.5 and -1 or 1
								SMODS.modify_rank(_card, delta)
							end

							_card:add_to_deck()
							G.deck.config.card_limit = G.deck.config.card_limit + 1
							table.insert(G.playing_cards, _card)
							G.hand:emplace(_card)
							_card.states.visible = nil

							G.E_MANAGER:add_event(Event({
								func = function()
									_card:start_materialize()
									return true
								end
							}))

							table.insert(created, true)
						end

						return {
							message = localize('k_copied_ex'),
							colour = G.C.CHIPS,
							card = card,
							playing_cards_created = created
						}
					end
				end
			end
			if context.first_hand_drawn then
				if not context.blueprint then
                	local eval = function() return G.GAME.current_round.hands_played == 0 end
                	juice_card_until(card, eval, true)
            	end
			end
		end
	end

	-- Звездопад
	if mod_obj ~= nil then
		local starfall = SMODS.Joker:new("Звездопад", "starfall", {extra = {rep = 2, joker1 = "j_dusk", joker2 = "j_supernova"}}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_starfall", mod_obj.path, "j_starfall.png", 71, 95, "asset_atli"):register();
		starfall:register()

		function SMODS.Jokers.j_starfall.loc_def(card)
			return {card.ability.extra.rep,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_starfall.calculate(card, context)
			if context.cardarea == G.play and context.repetition and G.GAME.current_round.hands_left == 0 then
				return {
                    message = localize('k_again_ex'),
                    repetitions = card.ability.extra.rep,
                    card = card
                }
            end
			if context.joker_main and G.GAME.current_round.hands_left == 0 then
				G.GAME.hands[context.scoring_name].played = G.GAME.hands[context.scoring_name].played + 2
			end
			if context.joker_main then
				return {
                    message = localize{type='variable',key='a_mult',vars={G.GAME.hands[context.scoring_name].played * 2}},
                    mult_mod = G.GAME.hands[context.scoring_name].played * 2
                }
			end
		end
	end

	-- Бросок в слепую
	if mod_obj ~= nil then
		local blind_throw = SMODS.Joker:new("Бросок в слепую", "blind_throw", {extra = {active = false, joker1 = "j_dusk", joker2 = "j_oops"}}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, false, true, true)
		SMODS.Sprite:new("j_blind_throw", mod_obj.path, "j_blind_throw.png", 71, 95, "asset_atli"):register();
		blind_throw:register()

		function SMODS.Jokers.j_blind_throw.loc_def(card)
			return {
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_blind_throw.calculate(card, context)
			if context.after and G.GAME.current_round.hands_left == 1 and not context.blueprint and card.ability.extra.active == false then
				card.ability.extra.active = true
				for k, v in pairs(G.GAME.probabilities) do 
                	G.GAME.probabilities[k] = v*9999
            	end
			end
			if context.end_of_round and card.ability.extra.active == true and not context.blueprint then
				card.ability.extra.active = false
				for k, v in pairs(G.GAME.probabilities) do 
                	G.GAME.probabilities[k] = v/9999
            	end
			end
		end
	end

	-- Стальная воля
	if mod_obj ~= nil then
		local steel_will = SMODS.Joker:new("Стальная воля", "steel_will", {extra = {steel_tally = 0, mult = 1, mult_dop = 0.2, joker1 = "j_steel_joker", joker2 = "j_raised_fist"}}, { x = 0, y = 0 }, nil, "Hybrid", 10, true, false, true, true, true)
		SMODS.Sprite:new("j_steel_will", mod_obj.path, "j_steel_will.png", 71, 95, "asset_atli"):register();
		steel_will:register()

		function SMODS.Jokers.j_steel_will.loc_def(card)
			return {card.ability.extra.mult, card.ability.extra.mult_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'},
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_steel_will.calculate(card, context)
			if context.joker_main and card.ability.extra.mult > 1 then
				local Xmult = card.ability.extra.mult
				return {
					message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = {card.ability.extra.mult}
					},
					Xmult_mod = Xmult,
					colour = G.C.MULT
				}
			end
		end

		function SMODS.Jokers.j_steel_will.update(self, _, _)
			if G.STAGE == G.STAGES.RUN and self.added_to_deck then
				self.ability.extra.steel_tally = 0
				self.ability.extra.mult = 1
				for k, v in pairs(G.playing_cards) do
					if v.config.center == G.P_CENTERS.m_steel then self.ability.extra.steel_tally = self.ability.extra.steel_tally + 1 end
				end
				if self.ability.extra.steel_tally > 0 then
					self.ability.extra.mult = 1 + (self.ability.extra.steel_tally * self.ability.extra.mult_dop)
				end

				if G.hand then
					local temp_Mult, temp_ID = 15, 15
                	local raised_card = nil
                	for i=1, #G.hand.cards do
                    	if temp_ID >= G.hand.cards[i].base.id and G.hand.cards[i].ability.effect ~= 'Stone Card' and G.hand.cards[i].config.center == G.P_CENTERS.m_steel then temp_Mult = G.hand.cards[i].base.nominal; temp_ID = G.hand.cards[i].base.id; raised_card = G.hand.cards[i] end
                	end

					if raised_card ~= nil then
						if raised_card.debuff == false then
							self.ability.extra.mult = self.ability.extra.mult * (temp_Mult / 3)
                    	end	
					else
						self.ability.extra.mult = 1
					end
				end
			end
		end
	end

	-- Кобальтовый джокер
	if mod_obj ~= nil then
		local cobalt_joker = SMODS.Joker:new("Кобальтовый джокер", "cobalt_joker", {extra = {chips = 104, chips_dop = 2, chips_steel_dop = 40, joker1 = "j_steel_joker", joker2 = "j_blue_joker"}}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, false, true, true)
		SMODS.Sprite:new("j_cobalt_joker", mod_obj.path, "j_cobalt_joker.png", 71, 95, "asset_atli"):register();
		cobalt_joker:register()

		function SMODS.Jokers.j_cobalt_joker.loc_def(card)
			return {card.ability.extra.chips, card.ability.extra.chips_dop, card.ability.extra.chips_steel_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'},
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_cobalt_joker.calculate(card, context)
			if context.joker_main and #G.deck.cards > 0 then
                return {
                    message = localize{type='variable',key='a_chips',vars={card.ability.extra.chips}},
                    chip_mod = card.ability.extra.chips, 
                    colour = G.C.CHIPS
                }
            end
		end

		function SMODS.Jokers.j_cobalt_joker.update(self, _, _)
			if G.STAGE == G.STAGES.RUN and self.added_to_deck then
				local steel = 0
				local total = 0
				for _, v in ipairs(G.deck.cards) do
					total = total + 1
					if v.config.center == G.P_CENTERS.m_steel then
						steel = steel + 1
					end
				end
				local extra = self.ability.extra
				extra.chips = total * (extra.chips_dop or 0) + steel * (extra.chips_steel_dop or 0)

				local discard_count = #G.discard.cards
				for i = discard_count, 1, -1 do
					local card = G.discard.cards[i]
					if card and card.config.center == G.P_CENTERS.m_steel then
						draw_card(G.discard, G.deck, i * 100 / discard_count, 'up', nil, nil, 0.005, i % 2 == 0, nil, math.max((21 - i) / 20, 0.7))
					end
				end
			end
		end
	end

	-- Карта хаоса
	if mod_obj ~= nil then
		local chaos_card = SMODS.Joker:new("Карта хаоса", "chaos_card", {extra = {mult_dop = 2, joker1 = "j_chaos", joker2 = "j_flash"}, mult = 0}, { x = 0, y = 0 }, nil, "Hybrid", 8, true, false, true, true, true)
		SMODS.Sprite:new("j_chaos_card", mod_obj.path, "j_chaos_card.png", 71, 95, "asset_atli"):register();
		chaos_card:register()

		function SMODS.Jokers.j_chaos_card.loc_def(card)
			return {card.ability.mult, card.ability.extra.mult_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'},
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_chaos_card.calculate(card, context)
			if context.joker_main and card.ability.mult > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={card.ability.mult}},
                    mult_mod = card.ability.mult
                }
            end
			if context.reroll_shop and not context.blueprint then
                card.ability.mult = card.ability.mult + card.ability.extra.mult_dop
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {card.ability.mult}}, colour = G.C.MULT})
                    return true
                end)}))
            end
		end
	end

	-- Професор скелетон
	if mod_obj ~= nil then
		local professor_skeleton = SMODS.Joker:new("Професор скелетон", "professor_skeleton", {extra = {dollar = 25, reroll = 10, joker1 = "j_mr_bones", joker2 = "j_chaos"}}, { x = 0, y = 0 }, nil, "Hybrid", 10, true, false, false, true, true)
		SMODS.Sprite:new("j_professor_skeleton", mod_obj.path, "j_professor_skeleton.png", 71, 95, "asset_atli"):register();
		professor_skeleton:register()

		function SMODS.Jokers.j_professor_skeleton.loc_def(card)
			return {card.ability.extra.dollar, card.ability.extra.reroll,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'},
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_professor_skeleton.calculate(card, context)
			if context.end_of_round and context.game_over and not context.blueprint then
				ease_dollars(card.ability.extra.dollar)
				G.GAME.run_setup.professor_skeleton_reroll = 10
				calculate_reroll_cost(true)
				G.E_MANAGER:add_event(Event({
                    func = function()
                        G.hand_text_area.blind_chips:juice_up()
                        G.hand_text_area.game_chips:juice_up()
                        play_sound('tarot1')
                        card:start_dissolve()
                        return true
                    end
                })) 
                return {
                    message = localize('k_saved_ex'),
                    saved = true,
                    colour = G.C.RED
                }
            end
		end
	end

	-- Золотое сечение
	if mod_obj ~= nil then
		local golden_ratio = SMODS.Joker:new("Золотое сечение", "golden_ratio", {extra = {X_dollar = 1, X_dollar_dop = 0.05, mult = 16, joker1 = "j_fibonacci", joker2 = "j_ticket"}}, { x = 0, y = 0 }, nil, "Hybrid", 10, true, false, true, true, true)
		SMODS.Sprite:new("j_golden_ratio", mod_obj.path, "j_golden_ratio.png", 71, 95, "asset_atli"):register();
		golden_ratio:register()

		function SMODS.Jokers.j_golden_ratio.loc_def(card)
			return {card.ability.extra.X_dollar, card.ability.extra.mult, card.ability.extra.X_dollar_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'},
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_golden_ratio.calculate(card, context)
			if context.individual and context.cardarea == G.play and (context.other_card:get_id() == 2 or context.other_card:get_id() == 3 or context.other_card:get_id() == 5 or context.other_card:get_id() == 8 or context.other_card:get_id() == 14) and context.other_card.ability.name == 'Gold Card' then
				card.ability.extra.X_dollar = card.ability.extra.X_dollar + card.ability.extra.X_dollar_dop
				return {
                    mult = card.ability.extra.mult,
                    card = card
                }
			end
		end
	end

	-- Математически верная фасоль
	if mod_obj ~= nil then
		local mathematically_correct_beans = SMODS.Joker:new("Математически верная фасоль", "mathematically_correct_beans", {extra = {hand_size = 5, mult = 8, ace = false, eight = false, five = false, three = false, two = false, joker1 = "j_turtle_bean", joker2 = "j_fibonacci"}}, { x = 0, y = 0 }, nil, "Hybrid", 10, true, false, false, true, true)
		SMODS.Sprite:new("j_mathematically_correct_beans", mod_obj.path, "j_mathematically_correct_beans.png", 71, 95, "asset_atli"):register();
		mathematically_correct_beans:register()

		function SMODS.Jokers.j_mathematically_correct_beans.loc_def(card)
			local extra = card.ability.extra
			local rank_names = {
				[2] = '2',
				[3] = '3',
				[5] = '5',
				[8] = '8',
				[14] = 'A'
			}

			local ranks_required = {}
			if not extra.two then table.insert(ranks_required, rank_names[2]) end
			if not extra.three then table.insert(ranks_required, rank_names[3]) end
			if not extra.five then table.insert(ranks_required, rank_names[5]) end
			if not extra.eight then table.insert(ranks_required, rank_names[8]) end
			if not extra.ace then table.insert(ranks_required, rank_names[14]) end

			local ranks_text = table.concat(ranks_required, ", ")

			return {
				extra.hand_size,
				extra.mult,
				ranks_text,
				localize{type = 'name_text', key = extra.joker1, set = 'Joker'},
				localize{type = 'name_text', key = extra.joker2, set = 'Joker'}
			}
		end

		function SMODS.Jokers.j_mathematically_correct_beans.calculate(card, context)
			if context.individual and context.cardarea == G.play and context.other_card then
				local extra = card.ability.extra
				local rank = context.other_card:get_id()

				if rank == 2 then extra.two = true end
				if rank == 3 then extra.three = true end
				if rank == 5 then extra.five = true end
				if rank == 8 then extra.eight = true end
				if rank == 14 then extra.ace = true end

				if extra.two and extra.three and extra.five and extra.eight and extra.ace then
					extra.hand_size = 5
					extra.two = false
					extra.three = false
					extra.five = false
					extra.eight = false
					extra.ace = false
				end

				if rank == 2 or rank == 3 or rank == 5 or rank == 8 or rank == 14 then
					return {
						mult = extra.mult,
						card = card
					}
				end
			end
			if not context.individual and not context.repetition and context.end_of_round and not context.blueprint then
                if card.ability.extra.hand_size - 1 <= 0 then 
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                                func = function()
                                    G.jokers:remove_card(card)
                                    card:remove()
                                    card = nil
                                    return true; end})) 
                                return true
                            end
                        })) 
                    return {
                        message = localize('k_eaten_ex'),
                        colour = G.C.FILTER
                    }
                else
                    card.ability.extra.hand_size = card.ability.extra.hand_size - 1
                    G.hand:change_size(-1)
                    return {
                        message = localize{type='variable',key='a_handsize_minus',vars={1}},
                        colour = G.C.FILTER
                    }
                end
            end
		end
	end

	-- Оползень
	if mod_obj ~= nil then
		local landslide = SMODS.Joker:new("Оползень", "landslide", {extra = {hand = 4, mult = 1, mult_mod = 1, joker1 = "j_tsunami", joker2 = "j_museum_thief"}}, { x = 0, y = 0 }, nil, "Advanced_Hybrid", 25, true, false, true, true, true)
		SMODS.Sprite:new("j_landslide", mod_obj.path, "j_landslide.png", 71, 95, "asset_atli"):register();
		landslide:register()

		function SMODS.Jokers.j_landslide.loc_def(card)
			return {card.ability.extra.hand, card.ability.extra.mult, card.ability.extra.mult_mod,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_landslide.calculate(card, context)
			if context.setting_blind and not context.blueprint_card and not context.getting_sliced then
				local plus = G.GAME.current_round.discards_left
                G.E_MANAGER:add_event(Event({func = function()
					ease_hands_played(card.ability.extra.hand)
                    ease_discard(-plus)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_hands', vars = {card.ability.extra.hand}}})
                return true end }))
            end
			if context.before then
				G.playing_card = (G.playing_card and G.playing_card + 1) or 1
				local front = pseudorandom_element(G.P_CARDS, pseudoseed('museum_fr'))
				local _card = Card(
					G.deck.T.x + G.deck.T.w/2,
					G.deck.T.y,
					G.CARD_W,
					G.CARD_H,
					front,
					G.P_CENTERS.m_stone,
					{playing_card = G.playing_card}
				)
				_card:add_to_deck()
				G.deck.config.card_limit = G.deck.config.card_limit + 1
				G.deck:emplace(_card)
				table.insert(G.playing_cards, _card)
				_card.states.visible = nil
				G.E_MANAGER:add_event(Event({
					func = function()
						_card:start_materialize()
						return true
					end
				}))
				card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {
					message = localize('k_plus_stone'),
					colour = G.C.SECONDARY_SET.Enhanced
				})
				playing_card_joker_effects({true})
				return {
					playing_cards_created = {true}
				}
			end
			if context.cardarea == G.play and context.individual then
				multip = card.ability.extra.mult
				card.ability.extra.mult = (card.ability.extra.mult or 0) + card.ability.extra.mult_mod
				return {
					message = localize({
						type = "variable",
						key = "a_mult",
						vars = {multip}
					}),
					mult_mod = multip,
					colour = G.C.MULT
				}
			end
			if context.after and context.cardarea == G.jokers then
				card.ability.extra.mult = 1
				return {
					message = localize('k_reset'),
					colour = G.C.MULT
				}
			end
			if context.cardarea == G.play and context.repetition and context.other_card.config.center.key == 'm_stone' then
                return {
                    message = localize('k_again_ex'),
                    repetitions = 1,
                    card = card
                }	
            end
		end
	end

	-- Вселенная шуток
	if mod_obj ~= nil then
		local universe_of_jokes = SMODS.Joker:new("Вселенная шуток", "universe_of_jokes", {extra = {bonus_base_dop = 0.25, joker1 = "j_no_riff_raff", joker2 = "j_Absolute_emptiness"}, Xmult = 1}, { x = 0, y = 0 }, nil, "Advanced_Hybrid", 25, true, false, true, true, true)
		SMODS.Sprite:new("j_universe_of_jokes", mod_obj.path, "j_universe_of_jokes.png", 71, 95, "asset_atli"):register();
		universe_of_jokes:register()

		function SMODS.Jokers.j_universe_of_jokes.loc_def(card)
			return {card.ability.Xmult, card.ability.extra.bonus_base_dop,
			localize{type = 'name_text', key = card.ability.extra.joker1, set = 'Joker'}, 
			localize{type = 'name_text', key = card.ability.extra.joker2, set = 'Joker'}}
		end

		function SMODS.Jokers.j_universe_of_jokes.calculate(card, context)
			if context.joker_main and card.ability.Xmult > 1 then
				local Xmult = card.ability.Xmult
				return {
					message = localize {
                        type = 'variable',
                        key = 'a_xmult',
                        vars = {card.ability.Xmult}
					},
					Xmult_mod = Xmult,
					colour = G.C.MULT
				}
			end
			if context.setting_blind and not card.getting_sliced then
				local i = 0
				local chance = 1.0
				while pseudorandom('joker_universe_' .. i) < chance do
    				i = i + 1
    				chance = chance * 0.7
					local universe_rarity = pseudorandom('joker_universe_rarity')
					local card_new = create_card('Joker', G.jokers, nil, universe_rarity, nil, nil, nil, nil)
					local universe_blind_count = 1
					local j = 0
					local chance2 = 1.0
					while pseudorandom('joker_universe_blind_count_'  .. j) < chance2 do
						universe_blind_count = universe_blind_count + 1
						j = j + 1
    					chance2 = chance2 * 0.7
					end
					card_new.ability.joker_universe = universe_blind_count
					card_new:add_to_deck()
					G.jokers:emplace(card_new)
					card_new:start_materialize()
				end
			end
		end
	end
end

-- Переделать под toml, боюсь что будет несовместимо с другими модами
function G.UIDEF.run_setup_option(type)
	if not G.SAVED_GAME then
	  G.SAVED_GAME = get_compressed(G.SETTINGS.profile..'/'..'save.jkr')
	  if G.SAVED_GAME ~= nil then G.SAVED_GAME = STR_UNPACK(G.SAVED_GAME) end
	end
  
	G.SETTINGS.current_setup = type
	G.GAME.viewed_back = Back(get_deck_from_name(G.PROFILES[G.SETTINGS.profile].MEMORY.deck))
  
	G.PROFILES[G.SETTINGS.profile].MEMORY.stake = G.PROFILES[G.SETTINGS.profile].MEMORY.stake or 1
  
	if type == 'Continue' then 
	  
	  G.viewed_stake = 1
	  if G.SAVED_GAME ~= nil then
		saved_game = G.SAVED_GAME
		local viewed_deck = 'b_red'
		for k, v in pairs(G.P_CENTERS) do
		  if v.name == saved_game.BACK.name then viewed_deck = k end
		end
		G.GAME.viewed_back:change_to(G.P_CENTERS[viewed_deck])
		G.viewed_stake = saved_game.GAME.stake or 1
	  end
	end
  
	if type == 'New Run' then
	  if G.OVERLAY_MENU then 
		local seed_toggle = G.OVERLAY_MENU:get_UIE_by_ID('run_setup_seed')
		if seed_toggle then seed_toggle.states.visible = true end
	  end
	  G.viewed_stake = G.PROFILES[G.SETTINGS.profile].MEMORY.stake or 1
	  G.FUNCS.change_stake({to_key = G.viewed_stake})
	else
	  G.run_setup_seed = nil
	  if G.OVERLAY_MENU then 
		local seed_toggle = G.OVERLAY_MENU:get_UIE_by_ID('run_setup_seed')
		if seed_toggle then seed_toggle.states.visible = false end
	  end
	end
  
	local area = CardArea(
	  G.ROOM.T.x + 0.2*G.ROOM.T.w/2,G.ROOM.T.h,
	  G.CARD_W,
	  G.CARD_H, 
	  {card_limit = 5, type = 'deck', highlight_limit = 0, deck_height = 0.75, thin_draw = 1})
  
	for i = 1, 10 do
	  local card = Card(G.ROOM.T.x + 0.2*G.ROOM.T.w/2,G.ROOM.T.h, G.CARD_W, G.CARD_H, pseudorandom_element(G.P_CARDS), G.P_CENTERS.c_base, {playing_card = i, viewed_back = true})
	  card.sprite_facing = 'back'
	  card.facing = 'back'
	  area:emplace(card)
	  if i == 10 then G.sticker_card = card; card.sticker = get_deck_win_sticker(G.GAME.viewed_back.effect.center) end
	end
  
	local ordered_names, viewed_deck = {}, 1
	for k, v in ipairs(G.P_CENTER_POOLS.Back) do
	  ordered_names[#ordered_names+1] = v.name
	  if v.name == G.GAME.viewed_back.name then viewed_deck = k end
	end
  
	local lwidth, rwidth = 1.4, 1.8
  
	local type_colour = G.C.BLUE
  
	local scale = 0.39
	G.setup_seed = ''
  
	local t = {n=G.UIT.ROOT, config={align = "cm", colour = G.C.CLEAR, minh = 6.6, minw = 6}, nodes={
				  type == 'Continue' and {n=G.UIT.R, config={align = "tm", minh = 3.8, padding = 0.15}, nodes={
					  {n=G.UIT.R, config={align = "cm", minh = 3.3, minw = 6.8}, nodes={
						{n=G.UIT.C, config={align = "cm", colour = G.C.BLACK, padding = 0.15, r = 0.1, emboss = 0.05}, nodes={
						  {n=G.UIT.C, config={align = "cm"}, nodes={
							{n=G.UIT.R, config={align = "cm", shadow = false}, nodes={
							  {n=G.UIT.O, config={object = area}}
							}},
						  }},{n=G.UIT.C, config={align = "cm", minw = 4, maxw = 4, minh = 1.7, r = 0.1, colour = G.C.L_BLACK, padding = 0.1}, nodes={
							  {n=G.UIT.R, config={align = "cm", r = 0.1, minw = 4, maxw = 4, minh = 0.6}, nodes={
								{n=G.UIT.O, config={id = nil, func = 'RUN_SETUP_check_back_name', object = Moveable()}},
							  }},
							  {n=G.UIT.R, config={align = "cm", colour = G.C.WHITE,padding = 0.03, minh = 1.75, r = 0.1}, nodes={
								{n=G.UIT.R, config={align = "cm"}, nodes={
								  {n=G.UIT.C, config={align = "cm", minw = lwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = localize('k_round'),colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cm"}, nodes={{n=G.UIT.T, config={text = ': ',colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cl", minw = rwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = tostring(saved_game.GAME.round),colour = G.C.RED, scale = 0.8*scale}}}}
								}},
								{n=G.UIT.R, config={align = "cm"}, nodes={
								  {n=G.UIT.C, config={align = "cm", minw = lwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = localize('k_ante'),colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cm"}, nodes={{n=G.UIT.T, config={text = ': ',colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cl", minw = rwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = tostring(saved_game.GAME.round_resets.ante),colour = G.C.BLUE, scale = 0.8*scale}}}}
								}},
								{n=G.UIT.R, config={align = "cm"}, nodes={
								  {n=G.UIT.C, config={align = "cm", minw = lwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = localize('k_money'),colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cm"}, nodes={{n=G.UIT.T, config={text = ': ',colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cl", minw = rwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = localize('$')..tostring(saved_game.GAME.dollars),colour = G.C.ORANGE, scale = 0.8*scale}}}}
								}},
								{n=G.UIT.R, config={align = "cm"}, nodes={
								  {n=G.UIT.C, config={align = "cm", minw = lwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = localize('k_best_hand'),colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cm"}, nodes={{n=G.UIT.T, config={text = ': ',colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cl", minw = rwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = number_format(saved_game.GAME.round_scores.hand.amt),colour = G.C.RED, scale = scale_number(saved_game.GAME.round_scores.hand.amt, 0.8*scale)}}}}
								}},
								saved_game.GAME.seeded and {n=G.UIT.R, config={align = "cm"}, nodes={
								  {n=G.UIT.C, config={align = "cm", minw = lwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = localize('k_seed'),colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cm"}, nodes={{n=G.UIT.T, config={text = ': ',colour = G.C.UI.TEXT_DARK, scale = scale*0.8}}}},
								  {n=G.UIT.C, config={align = "cl", minw = rwidth, maxw = lwidth}, nodes={{n=G.UIT.T, config={text = tostring(saved_game.GAME.pseudorandom.seed),colour = G.C.RED, scale = 0.8*scale}}}}
								}} or nil,
							  }}       
							}},
							{n=G.UIT.C, config={align = "cm"}, nodes={
							  {n=G.UIT.O, config={id = G.GAME.viewed_back.name, func = 'RUN_SETUP_check_back_stake_column', object = UIBox{definition = G.UIDEF.deck_stake_column(G.GAME.viewed_back.effect.center.key), config = {offset = {x=0,y=0}}}}}
							}}  
						  }}     
						}}}} or
						{n=G.UIT.R, config={align = "cm", minh = 3.8}, nodes={
						  create_option_cycle({options =  ordered_names, opt_callback = 'change_viewed_back', current_option = viewed_deck, colour = G.C.RED, w = 3.5, mid = 
						  {n=G.UIT.R, config={align = "cm", minh = 3.3, minw = 5}, nodes={
							  {n=G.UIT.C, config={align = "cm", colour = G.C.BLACK, padding = 0.15, r = 0.1, emboss = 0.05}, nodes={
								{n=G.UIT.C, config={align = "cm"}, nodes={
								  {n=G.UIT.R, config={align = "cm", shadow = false}, nodes={
									{n=G.UIT.O, config={object = area}}
								  }},
								}},{n=G.UIT.C, config={align = "cm", minh = 1.7, r = 0.1, colour = G.C.L_BLACK, padding = 0.1}, nodes={
									{n=G.UIT.R, config={align = "cm", r = 0.1, minw = 4, maxw = 4, minh = 0.6}, nodes={
									  {n=G.UIT.O, config={id = nil, func = 'RUN_SETUP_check_back_name', object = Moveable()}},
									}},
									{n=G.UIT.R, config={align = "cm", colour = G.C.WHITE, minh = 1.7, r = 0.1}, nodes={
									  {n=G.UIT.O, config={id = G.GAME.viewed_back.name, func = 'RUN_SETUP_check_back', object = UIBox{definition = G.GAME.viewed_back:generate_UI(), config = {offset = {x=0,y=0}}}}}
									}}       
								  }},
								  {n=G.UIT.C, config={align = "cm"}, nodes={
									{n=G.UIT.O, config={id = G.GAME.viewed_back.name, func = 'RUN_SETUP_check_back_stake_column', object = UIBox{definition = G.UIDEF.deck_stake_column(G.GAME.viewed_back.effect.center.key), config = {offset = {x=0,y=0}}}}}
								  }}   
								}}     
							  }}
							})
						  }},
					{n=G.UIT.R, config={align = "cm"}, nodes={
					  type == 'Continue' and {n=G.UIT.R, config={align = "cm", minh = 2.2, minw = 5}, nodes={
						{n=G.UIT.R, config={align = "cm", minh = 0.17}, nodes={}},
						{n=G.UIT.R, config={align = "cm"}, nodes={
						  {n=G.UIT.O, config={id = nil, func = 'RUN_SETUP_check_stake', insta_func = true, object = Moveable()}},
						}}
					  }}
					  or {n=G.UIT.R, config={align = "cm", minh = 2.2, minw = 6.8}, nodes={
						{n=G.UIT.O, config={id = nil, func = 'RUN_SETUP_check_stake', insta_func = true, object = Moveable()}},
					  }},
				  }},
				  {n=G.UIT.R, config={align = "cm", padding = 0.05, minh = 0.9}, nodes={
					{n=G.UIT.O, config={align = "cm", func = 'toggle_seeded_run', object = Moveable()}, nodes={
					}},
				  }},
				  {n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
					
					{n=G.UIT.C, config={align = "cm", minw = 2.4, id = 'run_setup_seed'}, nodes={
					  type == 'New Run' and create_toggle{col = true, label = localize('k_seeded_run'), label_scale = 0.25, w = 0, scale = 0.7, ref_table = G, ref_value = 'run_setup_seed'} or nil
					}},
					-- опа
					{n=G.UIT.C, config={align = "cm", minw = 2.4, id = 'run_setup_odyssey'}, nodes={
							type == 'New Run' and create_toggle{
								col = true,
								label = "Режим Одиссея",
								label_scale = 0.25,
								w = 0,
								scale = 0.7,
								ref_table = G,
								ref_value = 'run_setup_odyssey'
							} or nil
						}},
					  -- опа
					  {n=G.UIT.C, config={align = "cm", minw = 5, minh = 0.8, padding = 0.2, r = 0.1, hover = true, colour = G.C.BLUE, button = "start_setup_run", shadow = true, func = 'can_start_run'}, nodes={
						{n=G.UIT.R, config={align = "cm", padding = 0}, nodes={
						  {n=G.UIT.T, config={text = localize('b_play_cap'), scale = 0.8, colour = G.C.UI.TEXT_LIGHT,func = 'set_button_pip', focus_args = {button = 'x',set_button_pip = true}}}
						}}
					  }},
					 {n=G.UIT.C, config={align = "cm", minw = 2.5}, nodes={}}
				  }}
			  }}
	return t
end

-- Фунция начала забега, тут можно настроить правила режима одисеи и запретить пару джокеров
local start_runref = Game.start_run
function Game:start_run(args)
    start_runref(self, args)

    G.GAME.run_setup = G.GAME.run_setup or {}

    if G.run_setup_odyssey then
        G.GAME.run_setup.odyssey_mode = true
    end

    if G.GAME.run_setup.odyssey_mode then
        G.GAME.modifiers.no_blind_reward = G.GAME.modifiers.no_blind_reward or {}
        G.GAME.modifiers.no_blind_reward.Small = true
        G.GAME.modifiers.no_blind_reward.Big = true
        G.GAME.modifiers.no_blind_reward.Boss = true

        G.GAME.win_ante = 38
		if G.GAME.run_setup.odyssey_joker_slot ~= nil and G.GAME.run_setup.odyssey_joker_slot > 1 then
			G.jokers.config.card_limit = G.jokers.config.card_limit + G.GAME.run_setup.odyssey_joker_slot
		end

        -- Применяем спецусловия Одиссеи только один раз при первом запуске
        if not G.GAME.run_setup.odyssey_initialized then
            ease_dollars(100)                           	  -- Стартовые деньги
            G.GAME.interest = 0                               -- Процент дохода
            G.GAME.interest_cap = 0                           -- Лимит процентов
			G.GAME.shop.joker_max = 3

            G.STATE = G.STATES.SHOP                           -- Напрямую отправляем в магазин

            G.GAME.run_setup.odyssey_initialized = true       -- Помечаем, что это уже было
        end

        if banned_cards then
            for k, v in ipairs(banned_cards) do
                G.GAME.banned_keys[v.id] = true
                if v.ids then
                    for kk, vv in ipairs(v.ids) do
                        G.GAME.banned_keys[vv] = true
                    end
                end
            end
        end
    end
end

-- Функция рассчета очков для блайндов, одисея использует другую формулу
local get_blind_amountref = get_blind_amount
function get_blind_amount(ante)
	if G.GAME.run_setup and G.GAME.run_setup.odyssey_mode == true then
		local function round_to_two_significant_digits(n)
			local d = math.floor(math.log10(n))
			local factor = 10^(d - 1)
			return math.floor(n / factor + 0.5) * factor
		end

		if ante < 1 then return 100 end

		local difficulty = G.GAME.modifiers.scaling or 1
		local base = 1000
		local mult = 2.0
		local bonus_step = 0.1 * difficulty
		local value = base

		for i = 2, ante do
			value = value * mult
			mult = mult + bonus_step * (i - 1)
		end

		return round_to_two_significant_digits(value)
	else
		return get_blind_amountref(ante)
	end
end

-- Все эти манипуляции для джокера повышающего лимит кредита со своей стоимостью, да простят меня
local original_set_cost = Card.set_cost
function Card:set_cost()
    -- Сохраняем старую стоимость
    local old_sell = self.sell_cost or 0

    -- Основной расчёт стоимости
    self.extra_cost = (G.GAME.inflation or 0)

    if type(self.edition) == "table" then
        self.extra_cost = self.extra_cost +
            (self.edition.holo and 3 or 0) +
            (self.edition.foil and 2 or 0) +
            (self.edition.polychrome and 5 or 0) +
            (self.edition.negative and 5 or 0)
    end

    local base = self.base_cost or 0
    self.cost = math.max(1, math.floor((base + self.extra_cost + 0.5) * (100 - G.GAME.discount_percent)/100))

    if self.ability and self.ability.set == 'Booster' and G.GAME.modifiers.booster_ante_scaling then
        self.cost = self.cost + G.GAME.round_resets.ante - 1
    end

    if self.ability and self.ability.set == 'Booster' and (not G.SETTINGS.tutorial_complete) and G.SETTINGS.tutorial_progress and (not G.SETTINGS.tutorial_progress.completed_parts['shop_1']) then
        self.cost = self.cost + 3
    end

    if self.ability and (self.ability.set == 'Planet' or (self.ability.set == 'Booster' and self.ability.name:find('Celestial'))) and #find_joker('Astronomer') > 0 then
        self.cost = 0
    end

    if self.ability and self.ability.rental then
        self.cost = 1
    end

    local extra_value = (self.ability and self.ability.extra_value) or 0
    self.sell_cost = math.max(1, math.floor(self.cost / 2)) + extra_value

	-- Применим новую стоимость
	self.sell_cost = math.max(1, math.floor(self.cost / 2)) + extra_value

	if type(self.ability) == "table" and type(self.ability.extra) == "table" and self.ability.extra.affects_debt then
		-- Если это первый вызов, просто запомни без вычитания из лимита
		if self.previous_debt_sell_cost == nil then
			self.previous_debt_sell_cost = self.sell_cost
		else
			local delta = self.sell_cost - self.previous_debt_sell_cost
			G.GAME.bankrupt_at = (G.GAME.bankrupt_at or 0) - delta
			self.previous_debt_sell_cost = self.sell_cost
		end
	end

    if self.ability and self.ability.name == 'Расширитель' then
        local bought = G.GAME.run_setup and G.GAME.run_setup.odyssey_joker_slot or 0
        local new_cost = math.floor(10 * (2 ^ bought))
        self.cost = new_cost
        self.sell_cost = math.max(1, math.floor(self.cost / 2))
    end

    if self.area and self.ability and self.ability.couponed and (self.area == G.shop_jokers or self.area == G.shop_booster) then
        self.cost = 0
    end

    self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
end

-- Переработка ваунчеров для режима одисеи
local vanilla_get_current_pool = get_current_pool
function get_current_pool(_type, _rarity, _legendary, _append)
    if _type == 'Voucher' then
        local odyssey = G.run_setup_odyssey or (G.GAME.run_setup and G.GAME.run_setup.odyssey_mode)

        -- Одиссея: вручную задаём пул
        if odyssey then
            G.ARGS.TEMP_POOL = {'v_joker_slot_plus'}
            return G.ARGS.TEMP_POOL, 'VoucherCustom'
        end

        -- Обычный режим: получаем ванильный пул, но исключаем модовые ваучеры
        local pool, key = vanilla_get_current_pool(_type, _rarity, _legendary, _append)

        local filtered_pool = {}
        for _, k in ipairs(pool) do
            if not mod_vouchers[k] then
                table.insert(filtered_pool, k)
            end
        end

        -- обновляем TEMP_POOL
        G.ARGS.TEMP_POOL = EMPTY(G.ARGS.TEMP_POOL)
        for _, k in ipairs(filtered_pool) do
            table.insert(G.ARGS.TEMP_POOL, k)
        end

        return G.ARGS.TEMP_POOL, key
    end

    return vanilla_get_current_pool(_type, _rarity, _legendary, _append)
end

local original_card_apply_to_run = Card.apply_to_run
function Card:apply_to_run(center)
    local center_name = center and center.name or self.ability and self.ability.name

    if center_name == 'Расширитель' then
        G.E_MANAGER:add_event(Event({func = function()
            if G.jokers then
                G.jokers.config.card_limit = (G.jokers.config.card_limit or 0) + 1
            end

            local bought = (G.GAME.run_setup.odyssey_joker_slot or 0) + 1
            G.GAME.run_setup.odyssey_joker_slot = bought
            G.GAME.run_setup.odyssey_slot_price = math.floor(10 * (2 ^ (bought)))
            return true
        end}))
    end

    return original_card_apply_to_run(self, center)
end

local original_calculate_reroll_cost = calculate_reroll_cost
function calculate_reroll_cost(skip_increment)
	for _, card in ipairs(G.jokers.cards or {}) do
		if card.ability and card.ability.name == 'Карта хаоса' then
			if pseudorandom('chaos_card_reroll_') < 0.33 then
				G.GAME.current_round.free_rerolls = (G.GAME.current_round.free_rerolls or 0) + 1
			end
		end
	end
	if G.GAME.run_setup.professor_skeleton_reroll ~= nil then
		if G.GAME.run_setup.professor_skeleton_reroll > 0 then
			G.GAME.run_setup.professor_skeleton_reroll = G.GAME.run_setup.professor_skeleton_reroll - 1
			G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 1
		end
	end
	original_calculate_reroll_cost(skip_increment)
end

local original_sell_card = Card.sell_card
function Card:sell_card()
    G.CONTROLLER.locks.selling_card = true
    stop_use()
    local area = self.area
    G.CONTROLLER:save_cardarea_focus(area == G.jokers and 'jokers' or 'consumeables')

    if self.children.use_button then self.children.use_button:remove(); self.children.use_button = nil end
    if self.children.sell_button then self.children.sell_button:remove(); self.children.sell_button = nil end
    
    self:calculate_joker{selling_self = true}

    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
        play_sound('coin2')
        self:juice_up(0.3, 0.4)
        return true
    end}))
    delay(0.2)
    G.E_MANAGER:add_event(Event({trigger = 'immediate',func = function()
		sell_ease_dollars(self.sell_cost, self)

        self:start_dissolve({G.C.GOLD})
        delay(0.3)

        inc_career_stat('c_cards_sold', 1)
        if self.ability.set == 'Joker' then 
            inc_career_stat('c_jokers_sold', 1)
        end
        if self.ability.set == 'Joker' and G.GAME.blind and G.GAME.blind.name == 'Verdant Leaf' then 
            G.E_MANAGER:add_event(Event({trigger = 'immediate',func = function()
                G.GAME.blind:disable()
                return true
            end}))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.3, blocking = false,
        func = function()
            G.E_MANAGER:add_event(Event({trigger = 'immediate',
            func = function()
                G.E_MANAGER:add_event(Event({trigger = 'immediate',
                func = function()
                    G.CONTROLLER.locks.selling_card = nil
                    G.CONTROLLER:recall_cardarea_focus(area == G.jokers and 'jokers' or 'consumeables')
                return true
                end}))
            return true
            end}))
        return true
        end}))
        return true
    end}))
end

local original_ease_dollars = ease_dollars
function ease_dollars(mod, instant)
    mod = big(mod)

    for _, card in ipairs(G.jokers.cards or {}) do
        if card.ability and card.ability.name == 'Золотое сечение' then
            if mod > big(0) then
                mod = mod * big(card.ability.extra.X_dollar)
            end
        end
    end

    if to_big then
        mod = mod:floor()
    else
        mod = math.floor(mod)
    end

    original_ease_dollars(mod, instant)
end

function sell_ease_dollars(mod, instant)
    mod = big(mod)
    original_ease_dollars(mod, instant)
end
----------------------------------------------
------------MOD CODE END----------------------