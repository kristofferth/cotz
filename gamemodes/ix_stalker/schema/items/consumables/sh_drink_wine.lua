ITEM.name = "Wine, 750ml"
ITEM.description = "A bottle with liquid inside."
ITEM.longdesc = "A bottle of full bodied red wine. The label is almost unreadable, but it seems to be of French origin. Not very popular amoung STALKERs, as they seem to be more into hard spirits and beer, but it can still fetch a decent price if presented to the right people."
ITEM.model = "models/props_junk/garbage_glassbottle003a.mdl"

ITEM.price = 1
ITEM.width = 1
ITEM.height = 2
ITEM.weight = 0.250
ITEM.flatweight = 0.350

ITEM.thirst = 7
ITEM.quantity = 3

ITEM.sound = "stalkersound/inv_flask.mp3"
ITEM.img = Material("vgui/hud/items/drink/wine.png")

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_radiationremoval", 10, { amount = 0.25 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)

ITEM:DecideFunction()