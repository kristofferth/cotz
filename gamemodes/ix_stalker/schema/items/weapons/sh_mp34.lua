ITEM.name = "MP34"
ITEM.description= "A submachinegun chambered for 9x19mm."
ITEM.longdesc = "The MP34 is a submachine gun that was manufactured by Waffenfabrik Steyr as Steyr-Solothurn S1-100 and used by the Austrian Gendarmerie and subsequently by units of the German Army and the Waffen SS, in World War II. An exceptionally well-made weapon, it was used by some forces well into the 1970s.\n\nAmmo: 9x19mm \nMagazine Capacity: 20"
ITEM.model = ("models/khrcw2/doipack/w_mp34.mdl")
ITEM.class = "cw_mp34"
ITEM.weaponCategory = "primary"
ITEM.price = 9600
ITEM.width = 4
ITEM.height = 2
ITEM.busflag = {"guns3_1"}
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_tundra9mm"}

ITEM.iconCam = {
	pos = Vector(2, -205, 0),
	ang = Angle(0, 90, 0),
	fov = 11.5,
}

ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
				[1] = {
					["children"] = {
					},
					["self"] = {
						["Angles"] = Angle(-8.912, 96.435, -164.117),
						["Position"] = Vector(-12.767, -4.922, -5.399),
						["Model"] = "models/khrcw2/doipack/w_mp34.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "88831938491",
						["Bone"] = "chest",
						["Name"] = "cw_mp34",
						["AngleOffset"] = Angle(0, 0, 90),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "104433364102",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_mp34@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "81344251183",
		["EditorExpand"] = true,
	},
},
}