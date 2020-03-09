﻿ITEM.name = "G2 Contender"
ITEM.description= "A markmanship pistol chambered in .45 ACP."
ITEM.longdesc = "PLACEHOLDER.\n\nAmmo: .45 ACP\nMagazine Capacity: 1"
ITEM.model = "models/cw2/pistols/w_contender.mdl"
ITEM.class = "cw_contender"
ITEM.weaponCategory = "secondary"
ITEM.width = 3
ITEM.price = 1500
ITEM.height = 1
ITEM.busflag = {"guns1"}
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_aimpoint", "md_eotech", "md_microt1", "md_saker"}

ITEM.iconCam = {
	pos = Vector(5, 200, -1),
	ang = Angle(0, -90, 10),
	fov = 7,
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
						["Model"] = "models/cw2/pistols/w_contender.mdl",
						["ClassName"] = "model",
						["Position"] = Vector(-7.5, 2.084, 0.609),
						["AngleOffset"] = Angle(0, -10.5, 0),
						["EditorExpand"] = true,
						["UniqueID"] = "3544121191",
						["Bone"] = "pelvis",
						["Name"] = "conted",
						["Angles"] = Angle(0, 90, 0),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1083322402",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_contender@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "11227443",
		["EditorExpand"] = true,
	},
},
}