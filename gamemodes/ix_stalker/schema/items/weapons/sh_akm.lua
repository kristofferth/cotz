﻿ITEM.name = "AKM"
ITEM.description= "A soviet-designed assault rifle chambered for 7.62x39mm."
ITEM.longdesc = "The AKM is an assault rifle firing the 7.62×39mm Soviet intermediate cartridge.\nDespite being replaced in the late 1970s by the AK-74 the AKM is still in service in some Russian Army reserve and second-line units and several east European countries.\nIt is fairly easy to come by in the Zone and is favoured by many experienced stalkers because of the punch it packs.\n\nAmmo: 7.62x39mm\nMagazine Capacity: 30"
ITEM.model = "models/weapons/w_ops_ak47.mdl"
ITEM.class = "cw_akm"
ITEM.weaponCategory = "primary"
ITEM.width = 4
ITEM.price = 19250
ITEM.height = 2
--ITEM.busflag = {"ARMS2_3_1", "SPECIAL7_1"}
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_kobra","md_pso1","md_microt1","md_eotech","md_aimpoint","md_cmore","md_schmidt_shortdot","md_acog","md_reflex","md_pbs1","md_foregrip"}

ITEM.iconCam = {
	pos = Vector(-10, 200, 0),
	ang = Angle(0, 270, 5),
	fov = 13.235
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
						["Angles"] = Angle(74.21875, -177.46875, -96.1875),
						["Model"] = "models/weapons/w_ops_ak47.mdl",
						["ClassName"] = "model",
						["Position"] =	Vector(-11.558959960938, 0.410400390625, 0.008544921875),
						["AngleOffset"] = Angle(0, -10.5, 0),
						["EditorExpand"] = true,
						["UniqueID"] = "3543421491",
						["Bone"] = "chest",
						["Name"] = "ak47",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1051212402",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_akm@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "1118542183",
		["EditorExpand"] = true,
	},
},
}