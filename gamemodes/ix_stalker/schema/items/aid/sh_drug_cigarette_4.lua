ITEM.name = "'Spark' Cigarettes (20pk)"
ITEM.description = "A pack of 'Spark' brand cigarettes."
ITEM.longdesc = "'Spark' (Искра) brand cigarettes is an old USSR brand of cigarettes.\nIt is still popular in the zone, as the 20 pack design along with the decent quality tobacco makes it a good affordable option.\nThis pack is pretty old, and as such much of the tobacco's potency has waned."
ITEM.model = "models/lostsignalproject/items/consumable/cigarettes_sparkle.mdl"

ITEM.sound = "stalkersound/inv_smoke.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 780

ITEM.quantity = 20
ITEM.hunger = 3
ITEM.psyheal = 3

ITEM.flatweight = 0.010
ITEM.weight = 0.001

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 180),
	fov = 1.2,
}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		if (!self.entity) then
			ix.util.PropertyDesc(tooltip, "Everyday Item", Color(200, 200, 200))
			ix.util.PropertyDesc(tooltip, "Calms the Mind Very Slightly", Color(0, 255, 255))
			ix.util.PropertyDesc(tooltip, "Unhealthy", Color(255, 0, 0))
		end
	end
end

ITEM.functions.use = {
	name = "Smoke",
	icon = "icon16/stalker/smoke.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)

		local hunger = item.player:GetCharacter():GetData("hunger", 100)
		item.player:SetHunger(hunger + item.hunger)

		item.player:AddBuff("buff_psyheal", 15, { amount = item.psyheal/30 })

		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end
		
		ix.chat.Send(item.player, "iteminternal", "pulls out a "..item.name.." and smokes it.", false)

		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}

ITEM.functions.combine = {
	OnCanRun = function(item, data)
		if !data then
			return false
		end
		
		local targetItem = ix.item.instances[data[1]]

		if targetItem.uniqueid == item.uniqueid then
			return true
		else
			return false

		end
	end,
	OnRun = function(item, data)
		local targetItem = ix.item.instances[data[1]]
		local targetQuantDiff = targetItem.quantity - targetItem:GetData("quantity", targetItem.quantity)
		local localQuant = item:GetData("quantity", item.quantity)
		local targetQuant = targetItem:GetData("quantity", targetItem.quantity)
		item.player:EmitSound("stalkersound/inv_properties.mp3", 110)
		if targetQuantDiff >= localQuant then
			targetItem:SetData("quantity", targetQuant + localQuant)
			return true
		else
			item:SetData("quantity", localQuant - targetQuantDiff)
			targetItem:SetData("quantity", targetItem.quantity)
			return false
		end
	end,
}