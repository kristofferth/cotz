ITEM.name = "Zaporizske, 2.5l"
ITEM.description = "A large bottle of beer"
ITEM.longdesc = "Zaporiszke is a light beer. It has a clean and fresh malt flavor combined with a pleasant hop bitterness, sweetish flavor and a spicy-fruity aftertaste."
ITEM.model = "models/kek1ch/dev_beer.mdl"

ITEM.price = 1
ITEM.width = 1
ITEM.height = 3
ITEM.weight = 0.500
ITEM.flatweight = 0.150

ITEM.thirst = 11
ITEM.quantity = 5

ITEM.sound = "stalkersound/inv_flask.mp3"
ITEM.img = Material("vgui/hud/items/drink/bottlebeer_5.png")

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_radiationremoval", 10, { amount = 0.15 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)

ITEM:DecideFunction()