ITEM.name = "Cooked Consumable"
ITEM.description = "Consumable that has been cooked."
ITEM.category = "Cooked Meat"
ITEM.model = "models/props/cs_office/Cardboard_box02.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.flatweight = 0.1
ITEM.weightvariance = 0.01
ITEM.thirst = 0
ITEM.hunger = 0

function ITEM:PopulateTooltip(tooltip)
    if !self.entity then
        ix.util.PropertyDesc(tooltip, "Zone-Cooked", Color(255, 255, 0))
    end

    if (self.PopulateTooltipIndividual) then
      self:PopulateTooltipIndividual(tooltip)
    end
end

function ITEM:DecideFunction()
	if ITEM.thirst > 0 then
		ITEM.functions.use = {
			name = "Drink",
			icon = "icon16/stalker/drink.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity))
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				item.player:SetAction("Drinking", 5)
				item.player:Freeze(true) 
				item.player:ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0 ), 1, 3 ) 
				timer.Simple(1, function() 
					client:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 1, 3 ) 
				end)
				timer.Simple(4, function() 
					client:SetHunger(hunger + item.hunger)
					client:SetThirst(thirst + item.thirst)
					client:Freeze(false)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				
				item.player:UpdateThirstState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 then
		ITEM.functions.use = {
			name = "Eat",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity))
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				item.player:SetAction("Eating", 5)
				item.player:Freeze(true) 
				item.player:ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0 ), 1, 3 ) 
				timer.Simple(1, function() 
					client:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 1, 3 ) 
				end)
				timer.Simple(4, function() 
					client:SetHunger(hunger + item.hunger)
					client:SetThirst(thirst + item.thirst)
					client:Freeze(false)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				item.player:UpdateHungerState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 and ITEM.thirst > 0 then
		ITEM.functions.use = {
			name = "Consume",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity))
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				item.player:SetAction("Consuming", 5)
				item.player:Freeze(true) 
				item.player:ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0 ), 1, 3 ) 
				timer.Simple(1, function() 
					client:ScreenFade( SCREENFADE.IN, Color( 0, 0, 0 ), 1, 3 ) 
				end)
				timer.Simple(4, function() 
					client:SetHunger(hunger + item.hunger)
					client:SetThirst(thirst + item.thirst)
					client:Freeze(false)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				item.player:UpdateHungerState(item.player)
				item.player:UpdateThirstState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	end	
end

function ITEM:OnInstanced(invID, x, y)
    if (!self:GetData("weight")) then
        self:SetData("weight", self.flatweight + math.Round(math.Rand(-self.weightvariance, self.weightvariance), 3))
    end
end