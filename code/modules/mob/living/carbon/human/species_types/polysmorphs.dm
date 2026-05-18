/datum/species/polysmorph
	name = "Polysmorph"
	plural_form = "Polysmorphs"
	id = SPECIES_POLYSMORPH

	inherent_biotypes = MOB_ORGANIC | MOB_HUMANOID

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/polysmorph,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/polysmorph,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/polysmorph,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/polysmorph,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/polysmorph,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/polysmorph,
	)

	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
/datum/species/polysmorph/get_species_description()
	return "A strange human-xenomorph hybrid with an unsettling appearance."

/datum/species/polysmorph/create_pref_unique_perks()
	return list()
