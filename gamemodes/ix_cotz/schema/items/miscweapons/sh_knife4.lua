ITEM.name = "Battered Bayonet"
ITEM.description = "A knife for close quarter combat."
ITEM.model = "models/weapons/w_csgo_bayonet.mdl"
ITEM.longdesc = "A battered bayonet which has seen military use. While it's use in survival scenarios is questionable, it has seen combat beyond many other types of knives. So much, that the attachment section has broken off."
ITEM.category = "Melee"

ITEM.price = 31550
ITEM.height = 1
ITEM.width = 2

ITEM.class = "tfa_nmrih_combatknife"
ITEM.weaponCategory = "knife"
ITEM.canAttach = false
ITEM.repairCost = ITEM.price/100*1

ITEM.weight = 1.900

ITEM.knifetier = 3
ITEM.isPoachKnife = true

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(5, 20, 2),
	ang = Angle(0, 270, -120),
	fov = 45,
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
						["Angles"] = Angle(0.719, 93.188, -174.281),
						["Position"] = Vector(-7.366, 6.884, 6.301),
						["Model"] = "models/weapons/w_csgo_bayonet.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "combatknife_1",
						["Bone"] = "pelvis",
						["Name"] = "bat",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "combatknife_2",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "tfa_nmrih_combatknife@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "combatknife_3",
		["EditorExpand"] = true,
	},
},
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Melee", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Poaching Tool", Color(64, 224, 208))
end