ITEM.name = ".44 Magnum Hollow-Point"
ITEM.model = "models/items/ammo_44mag.mdl"
ITEM.ammo = ".44 Magnum -HP-" // type of the ammo
ITEM.ammoAmount = 60 // amount of the ammo
ITEM.description= "A box that contains %s rounds of Hollow-Point .44 Magnum ammo. "
ITEM.longdesc = "This large-bore .44 Magnum cartridge was originally designed for revolvers, but quickly adopted by rifles and carbines."
ITEM.price = 1000
ITEM.width = 2
ITEM.img = ix.util.GetMaterial("vgui/hud/44magnumzl.png")

ITEM.weight = 0.017
ITEM.flatweight = 0.03

function ITEM:GetWeight()
  return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
end