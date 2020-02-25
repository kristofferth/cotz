ITEM.name = "Obrez"
ITEM.description= "A shortened bolt action rifle chambered for 7.62x54mm."
ITEM.longdesc = "A well-used sawn-off Mosin Nagant rifle, it's exact model is unclear.\nA direct hit with this weapon at close range is devastating, but accuracy leaves a lot to be desired.\n\nAmmo: 7.62x54mm\nMagazine Capacity: 5"
ITEM.model = ("models/weapons/w_obrez.mdl")
ITEM.class = "cw_obrez"
ITEM.weaponCategory = "secondary"
ITEM.price = 7350
ITEM.width = 2
ITEM.height = 1
ITEM.busflag = {"guns6"}
ITEM.repairCost = ITEM.price/100*1

ITEM.canAttach = false

ITEM.iconCam = {
	pos = Vector(4, 200, 1.3999999761581),
	ang = Angle(0, 270, 0),
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
						["Model"] = "models/weapons/w_obrez.mdl",
						["ClassName"] = "model",
						["Position"] = Vector(-9.556, -7.978, -2.301),
						["AngleOffset"] = Angle(0, -10.5, 0),
						["EditorExpand"] = true,
						["UniqueID"] = "3578648235",
						["Bone"] = "pelvis",
						["Name"] = "obrez",
						["Angles"] = Angle(0, 94.78, 0),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1418327982",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_obrez@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "7391465467",
		["EditorExpand"] = true,
	},
},
}