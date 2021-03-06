/***********************************
RUSSO-JAPANESE WAR WEAPONS MAGS N AMMO
***********************************/
/obj/item/ammo_magazine/mosin
	name = "Clip (7.92x54mm)"
	icon_state = "clip"
	caliber = "a762x54"
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	ammo_type = /obj/item/ammo_casing/a762x54
	max_ammo = 5
	weight = 0.04
	multiple_sprites = TRUE

/obj/item/ammo_magazine/mosinbox
	name = "magazine box (7.92x54mm)"
	icon_state = "mosin_ammo"
	mag_type = MAGAZINE
	caliber = "a762x54"
	w_class = 3
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/a762x54
	max_ammo = 50
	multiple_sprites = FALSE
	is_box = TRUE

/obj/item/ammo_magazine/sharps
	name = "ammo box (.45-70 Government)"
	icon_state = "oldbox"
	mag_type = SPEEDLOADER
	caliber = "a4570"
	w_class = 3
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/a4570
	max_ammo = 15
	multiple_sprites = FALSE
	is_box = TRUE

/obj/item/ammo_magazine/c577
	name = "ammo box (.577/450 Martini-Henry)"
	icon_state = "mhbox"
	mag_type = SPEEDLOADER
	caliber = "a577"
	w_class = 3
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/a577
	max_ammo = 12
	multiple_sprites = FALSE
	is_box = TRUE

/obj/item/ammo_magazine/arisaka
	name = "Clip (6.5x50mm)"
	icon_state = "kclip"
	caliber = "a65x50mm"
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	ammo_type = /obj/item/ammo_casing/a65x50mm
	max_ammo = 5
	weight = 0.038
	multiple_sprites = TRUE

/obj/item/ammo_magazine/arisakabox
	name = "magazine box (6.5x50mm)"
	icon_state = "arisaka_ammo"
	mag_type = MAGAZINE
	caliber = "a65x50mm"
	w_class = 3
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/a65x50mm
	max_ammo = 50
	multiple_sprites = FALSE
	is_box = TRUE

/obj/item/ammo_magazine/maxim
	name = "Maxim ammo belt"
	icon_state = "maximbelt"
	mag_type = MAGAZINE
	caliber = "a762x54"
	w_class = 4
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/a762x38
	max_ammo = 250
	multiple_sprites = TRUE
	var/slot = "decor"
	var/obj/item/clothing/under/has_suit = null		//the suit the tie may be attached to
	var/image/inv_overlay = null	//overlay used when attached to clothing.
	var/image/mob_overlay = null
	var/overlay_state = null

/obj/item/ammo_magazine/c8mmnambu
	name = "Nambu magazine"
	icon_state = "lugermag"
	mag_type = MAGAZINE
	caliber = "c8mmnambu"
	ammo_type = /obj/item/ammo_casing/c8mmnambu
	max_ammo = 8
	weight = 0.02
	multiple_sprites = TRUE

/obj/item/ammo_magazine/luger
	name = "Luger magazine"
	icon_state = "lugermag"
	mag_type = MAGAZINE
	caliber = "9x19mm"
	ammo_type = /obj/item/ammo_casing/a9x19mm
	max_ammo = 8
	weight = 0.02
	multiple_sprites = TRUE

/obj/item/ammo_magazine/borchardt
	name = "Borchardt magazine"
	icon_state = "borchardtmag"
	mag_type = MAGAZINE
	caliber = "765x25mm"
	ammo_type = /obj/item/ammo_casing/a765x25mm
	max_ammo = 8
	weight = 0.02
	multiple_sprites = TRUE

/obj/item/ammo_magazine/mauser
	name = "Mauser clip (9x19mm)"
	icon_state = "mauser"
	caliber = "9x19mm"
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	ammo_type = /obj/item/ammo_casing/a9x19mm
	max_ammo = 10
	weight = 0.06
	multiple_sprites = TRUE
	mag_type = SPEEDLOADER


////////// NAGANT REVOLVER ///////////////
/obj/item/ammo_magazine/c762x38mmR
	name = "bullet pouch (7.62x38mmR)"
	icon_state = "pouch"
	ammo_type = /obj/item/ammo_casing/a762x38
	caliber = "a762x38"
	max_ammo = 21
	weight = 0.4
	multiple_sprites = TRUE
	mag_type = SPEEDLOADER
	pouch = TRUE

/obj/item/ammo_magazine/c9mm_jap_revolver
	name = "bullet pouch (9mm)"
	icon_state = "pouch"
	ammo_type = /obj/item/ammo_casing/c9mm_jap_revolver
	caliber = "c9mm_jap_revolver"
	max_ammo = 18
	weight = 0.70

	multiple_sprites = TRUE
	mag_type = SPEEDLOADER
	pouch = TRUE

/obj/item/ammo_magazine/c45
	name = "bullet pouch (.45 Colt)"
	desc = "a pouch of 11.43xmmR bullets."
	icon_state = "pouch"
	ammo_type = /obj/item/ammo_casing/a45
	caliber = "a45"
	max_ammo = 24
	weight = 0.9
	multiple_sprites = TRUE
	mag_type = SPEEDLOADER
	pouch = TRUE

/obj/item/ammo_magazine/c41
	name = "bullet pouch (.41 Short)"
	desc = "a pouch of .41-100 bullets, mostly used on the Derringer."
	icon_state = "pouch"
	ammo_type = /obj/item/ammo_casing/a41
	caliber = "a41"
	max_ammo = 10
	weight = 0.1
	multiple_sprites = TRUE
	mag_type = SPEEDLOADER
	pouch = TRUE

/obj/item/ammo_magazine/c44
	name = "bullet pouch (.44-40 Winchester)"
	desc = "a pouch of .44-40 bullets."
	icon_state = "pouch"
	ammo_type = /obj/item/ammo_casing/a44
	caliber = "a44"
	max_ammo = 30
	weight = 1.1
	multiple_sprites = TRUE
	mag_type = SPEEDLOADER
	pouch = TRUE


/obj/item/ammo_magazine/murata
	name = "Clip (8x53mm)"
	icon_state = "kclip"
	caliber = "a8x53mm"
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	ammo_type = /obj/item/ammo_casing/a8x53mm
	max_ammo = 5
	weight = 0.048
	multiple_sprites = TRUE

/obj/item/ammo_magazine/c44p
	name = "bullet pouch (.44)"
	icon_state = "pouch"
	ammo_type = /obj/item/ammo_casing/a44p
	caliber = "a44p"
	max_ammo = 18
	weight = 0.4
	multiple_sprites = TRUE
	mag_type = SPEEDLOADER
	desc = "A pouch containing 18 .44 pistol rounds."

/obj/item/ammo_magazine/shellbox
	name = "shotgun buckshot box (.12 guage)"
	icon_state = "shellbox"
//	origin_tech = "combat=2"
	mag_type = MAGAZINE
	caliber = "12guage"
	w_class = 3
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/shotgun
	max_ammo = 12
	multiple_sprites = TRUE
	is_box = TRUE

/obj/item/ammo_magazine/shellbox/slug
	name = "shotgun slugshot box (.12 guage)"
	icon_state = "slugbox"
	ammo_type = /obj/item/ammo_casing/shotgun/slug

/obj/item/ammo_magazine/shellbox/beanbag
	name = "shotgun beanbag box (.12 guage)"
	icon_state = "beanbox"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
