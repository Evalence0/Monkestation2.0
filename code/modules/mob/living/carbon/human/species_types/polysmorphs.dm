/datum/species/polysmorph
	name = "Polysmorph"
	plural_form = "Polysmorphs"
	id = SPECIES_POLYSMORPH

	// Basic identity
	inherent_biotypes = MOB_ORGANIC | MOB_HUMANOID

	// Very light traits (ONLY if these exist, otherwise remove)
	inherent_traits = list(
	TRAIT_MUTANT_COLORS
	)

	// Visual customization hooks (safe, matches other species)
	mutant_bodyparts = list(
		"tail_polysmorph" = "None",
		"dome" = "None",
		"dorsal_tubes" = "None",
		"teeth" = "None"
	)

	// Minimal organ overrides (safe defaults)
//	mutanttongue = /obj/item/organ/internal/tongue
//	mutanteyes = /obj/item/organ/internal/eyes

	// Optional language (remove if it errors)
	species_language_holder = /datum/language_holder

	// Standard flags (copied from other species)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
/datum/species/polysmorph/get_species_description()
	return "A strange human-xenomorph hybrid with an unsettling appearance."

/datum/species/polysmorph/create_pref_unique_perks()
	return list()
