/obj/item/bodypart/head/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	is_dimorphic = FALSE
	head_flags = HEAD_EYEHOLES | HEAD_DEBRAIN | HEAD_EYECOLOR
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/chest/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	is_dimorphic = FALSE
	ass_image = 'icons/ass/assalien.png'
	wing_types = list(/obj/item/organ/external/wings/functional/angel)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/arm/left/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	unarmed_attack_verb = "slash"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/weapons/slashmiss.ogg'
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/arm/right/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	unarmed_attack_verb = "slash"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/weapons/slashmiss.ogg'
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/leg/left/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
	step_sounds = list(
		'sound/effects/footstep/hardclaw1.ogg',
		'sound/effects/footstep/hardclaw2.ogg',
		'sound/effects/footstep/hardclaw3.ogg',
		'sound/effects/footstep/hardclaw4.ogg',
	)

/obj/item/bodypart/leg/right/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
	step_sounds = list(
		'sound/effects/footstep/hardclaw1.ogg',
		'sound/effects/footstep/hardclaw2.ogg',
		'sound/effects/footstep/hardclaw3.ogg',
		'sound/effects/footstep/hardclaw4.ogg',
	)
