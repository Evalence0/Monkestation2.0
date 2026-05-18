/obj/item/bodypart/head/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	is_dimorphic = FALSE
	head_flags = HEAD_HAIR| HEAD_EYESPRITES | HEAD_EYEHOLES | HEAD_DEBRAIN | HEAD_EYECOLOR
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/chest/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	is_dimorphic = TRUE
	ass_image = 'icons/ass/assalien.png'
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
	wing_types = list(/obj/item/organ/external/wings/functional/dragon)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/arm/left/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	unarmed_attack_verb = "slash"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/weapons/slashmiss.ogg'
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/arm/right/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	unarmed_attack_verb = "slash"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/weapons/slashmiss.ogg'
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR

/obj/item/bodypart/leg/left/polysmorph
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = SPECIES_POLYSMORPH
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
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
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
	step_sounds = list(
		'sound/effects/footstep/hardclaw1.ogg',
		'sound/effects/footstep/hardclaw2.ogg',
		'sound/effects/footstep/hardclaw3.ogg',
		'sound/effects/footstep/hardclaw4.ogg',
	)

/mob/living/carbon/human/is_digitigrade_squished()
	var/obj/item/clothing/shoes/worn_shoes = shoes
	var/obj/item/clothing/under/worn_suit = wear_suit
	var/obj/item/clothing/under/worn_uniform = w_uniform

	var/uniform_compatible = isnull(worn_uniform) \
		|| (worn_uniform.supports_variations_flags & DIGITIGRADE_VARIATIONS) \
		|| !(worn_uniform.body_parts_covered & LEGS) \
		|| (worn_suit?.flags_inv & HIDEJUMPSUIT) // If suit hides our jumpsuit, it doesn't matter if it squishes

	var/suit_compatible = isnull(worn_suit) \
		|| (worn_suit.supports_variations_flags & DIGITIGRADE_VARIATIONS) \
		|| !(worn_suit.body_parts_covered & LEGS)

	var/shoes_compatible = isnull(worn_shoes) \
		|| (worn_shoes.supports_variations_flags & DIGITIGRADE_VARIATIONS)

	return !uniform_compatible || !suit_compatible || !shoes_compatible

/obj/item/bodypart/leg/left/digitigrade
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = BODYPART_ID_DIGITIGRADE
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_DIGITIGRADE
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
	step_sounds = list(
		'sound/effects/footstep/hardclaw1.ogg',
		'sound/effects/footstep/hardclaw2.ogg',
		'sound/effects/footstep/hardclaw3.ogg',
		'sound/effects/footstep/hardclaw4.ogg',
	)

/obj/item/bodypart/leg/left/digitigrade/update_limb(dropping_limb = FALSE, is_creating = FALSE)
	. = ..()
	limb_id = owner?.is_digitigrade_squished() ? SPECIES_POLYSMORPH : BODYPART_ID_DIGITIGRADE

/obj/item/bodypart/leg/right/digitigrade
	icon_greyscale = 'icons/mob/species/polysmorph/bodyparts.dmi'
	limb_id = BODYPART_ID_DIGITIGRADE
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_DIGITIGRADE
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS
	composition_effects = list(TRAIT_COLD_BLOODED = 0.5)
	palette = /datum/color_palette/generic_colors
	palette_key = MUTANT_COLOR
	step_sounds = list(
		'sound/effects/footstep/hardclaw1.ogg',
		'sound/effects/footstep/hardclaw2.ogg',
		'sound/effects/footstep/hardclaw3.ogg',
		'sound/effects/footstep/hardclaw4.ogg',
	)

/obj/item/bodypart/leg/right/digitigrade/update_limb(dropping_limb = FALSE, is_creating = FALSE)
	. = ..()
	limb_id = owner?.is_digitigrade_squished() ? SPECIES_POLYSMORPH : BODYPART_ID_DIGITIGRADE
