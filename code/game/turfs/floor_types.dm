#define NORTH_EDGING	"north"
#define SOUTH_EDGING	"south"
#define EAST_EDGING		"east"
#define WEST_EDGING		"west"

/turf/floor/wood
	name = "floor"
	icon_state = "wood"
	stepsound = "wood"

/turf/floor/wood/ship
	name = "floor"
	icon_state = "wood_ship"
	stepsound = "wood"


/* when this is a subtype of /turf/floor/wood, it doesn't get the right icon.
 * not sure why right now - kachnov */

/turf/floor/wood_broken
	name = "floor"
	icon = 'icons/turf/flooring/wood.dmi'
	icon_state = "broken0"
	stepsound = "wood"

/turf/floor/wood_broken/New()
	..()
	icon_state = "broken[rand(0,6)]"
/turf/floor/plating
	name = "plating"
	icon_state = "plating"
	floor_type = null
	intact = FALSE

/turf/floor/plating/ex_act(severity)
		//set src in oview(1)
	switch(severity)
		if (1.0)
			ChangeTurf(world.turf)
		if (2.0)
			if (prob(40))
				ChangeTurf(world.turf)
	return

/turf/floor/grass
	name = "Grass patch"
	icon = 'icons/turf/flooring/grass.dmi'
	icon_state = "grass1"

	New()
		icon_state = "grass[pick("0","1","2","3")]"
		..()
		spawn(4)
			if (src)
				update_icon()
				for (var/direction in cardinal)
					if (istype(get_step(src,direction),/turf/floor))
						var/turf/floor/FF = get_step(src,direction)
						FF.update_icon() //so siding get updated properly

/turf/floor/carpet
	name = "Carpet"
	icon_state = "carpet"

	New()
		if (!icon_state)
			icon_state = "carpet"
		..()
		spawn(4)
			if (src)
				update_icon()
				for (var/direction in list(1,2,4,8,5,6,9,10))
					if (istype(get_step(src,direction),/turf/floor))
						var/turf/floor/FF = get_step(src,direction)
						FF.update_icon() //so siding get updated properly



/turf/floor/plating/ironsand/New()
	..()
	icon = 'icons/turf/floors.dmi'
	name = "Iron Sand"
	icon_state = "ironsand[rand(1,15)]"

/turf/floor/plating/snow
	name = "snow"
	icon = 'icons/turf/snow.dmi'
	icon_state = "snow"
	is_diggable = TRUE
	available_snow = 3
	initial_flooring = null

/turf/floor/plating/snow/ex_act(severity)
	return

/turf/floor/grass/jungle
	name = "jungle grass"
	overlay_priority = 0
	is_diggable = TRUE
	may_become_muddy = TRUE
	initial_flooring = null

/turf/floor/winter/grass
	name = "snowy grass"
	icon = 'icons/turf/snow.dmi'
	icon_state = "grass2"
	is_diggable = TRUE
	available_snow = 2
	initial_flooring = null

/turf/floor/winter/grass/New()
	..()
	icon = 'icons/turf/snow.dmi'
	icon_state = "grass[rand(0,6)]"
	initial_flooring = null

/turf/floor/plating/beach
	name = "beach"
	icon = 'icons/misc/beach.dmi'
	initial_flooring = null

/turf/floor/plating/beach/drywater
	name = "dry riverbed"
	icon = 'icons/turf/floors.dmi'
	icon_state = "sand1"
	is_diggable = FALSE
	initial_flooring = null

/turf/floor/plating/beach/sand
	name = "sand"
	icon_state = "sand"
	is_diggable = TRUE
	available_sand = 4
	initial_flooring = /decl/flooring/sand_beach

/turf/floor/plating/beach/sand/dark
	name = "dark sand"
	icon = 'icons/turf/floors.dmi'
	icon_state = "dust"
	is_diggable = TRUE
	available_sand = 4
	initial_flooring = null

/turf/floor/plating/beach/coastline
	name = "coastline"
	icon = 'icons/misc/beach2.dmi'
	icon_state = "sandwater"

//water level is measured in centimeters. the maximum is 200 (2 meters). up to 1.5 will make movement progressively slower, up from that you will drown if you stay for too long.

/turf/floor/plating/beach/water
	name = "water"
	desc = "Water. Seems to be shallow."
	icon_state = "seashallow"
	move_delay = 3
	water_level = 30 // in centimeters
	var/salty = FALSE
	var/sickness = 1 //amount of toxins, from 0 to 3
	initial_flooring = /decl/flooring/water

/turf/floor/plating/beach/water/shallowsaltwater
	name = "saltwater"
	salty = TRUE

/turf/floor/plating/beach/water/deep
	name = "deep water"
	icon_state = "seadeep"
	desc = "Water. Seems to be very deep, you cant see the bottom."
	water_level = 200
	density = FALSE
	iscovered = FALSE
	initial_flooring = /decl/flooring/water_deep

/turf/floor/plating/beach/water/deep/saltwater
	name = "deep saltwater"
	salty = TRUE
/turf/floor/plating/beach/water/deep/CanPass(atom/movable/mover)
	if (istype(mover, /obj/effect/effect/smoke))
		return TRUE
	else if (istype(mover, /obj/item/projectile))
		return TRUE
	else if ((istype(mover, /mob)) && !iscovered)
		return FALSE
	else
		return ..()
/turf/floor/plating/beach/water/swamp
	name = "swamp water"
	move_delay = 3
	color = "#94B21C"
	sickness = 3
/turf/floor/plating/beach/water/jungle
	name = "river water"
	move_delay = 5
	color = "#BCA650"
	sickness = 2
/turf/floor/plating/beach/water/flooded
	name = "flooded riverbed"
	move_delay = 5
	color = "#968440"
	sickness = 2

/turf/floor/plating/beach/water/proc/Extinguish(var/mob/living/L)
	if (istype(L))
		L.ExtinguishMob()
		L.fire_stacks = FALSE

/turf/floor/plating/beach/water/ex_act(severity)
	return

/turf/floor/plating/beach/water/New()
	..()
	if (!istype(src, /turf/floor/plating/beach/water/ice))
		if (!istype(src, /turf/floor/plating/beach/water/swamp))
			overlays += image("icon"='icons/misc/beach.dmi',"icon_state"="water5","layer"=layer+0.1)
		else
			var/image/I = image("icon"='icons/misc/beach.dmi',"icon_state"="water5","layer"=layer+0.1)
			I.color = color
			I.alpha = 155
			overlays += I
			alpha = 155
			I = image("icon"='icons/misc/beach.dmi',"icon_state"="plating","layer"=layer-0.1)
			underlays += I

/turf/floor/plating/beach/water/ice
	name = "ice"
	icon_state = "seashallow_frozen"
	move_delay = 0
	initial_flooring = null

/turf/floor/plating/beach/water/ice/salty
	name = "saltwater ice"

/turf/floor/plating/sand
	name = "sand"
	icon = 'icons/turf/floors.dmi'
	icon_state = "sand1"
	interior = FALSE
	stepsound = "dirt"
	is_diggable = TRUE
	available_sand = 2
	initial_flooring = /decl/flooring/sand

/turf/floor/plating/sand/desert
	name = "desert sand"
	icon = 'icons/misc/beach.dmi'
	icon_state = "desert1"
	interior = FALSE
	stepsound = "dirt"
	is_diggable = TRUE
	available_sand = 2
	initial_flooring = null

/turf/floor/plating/sand/desert/New()
	..()
	icon_state = "desert[rand(0,4)]"

/turf/floor/plating/sand/New()
	..()
	icon_state = "sand[rand(1, 3)]"

/turf/floor/plating/concrete
	name = "concrete"
	icon = 'icons/turf/floors.dmi'
	icon_state = "concrete6"
	interior = FALSE

/turf/floor/plating/concrete/New()
	..()
	if (icon_state == "concrete2")
		icon_state = pick("concrete2", "concrete3")
		return
	if (icon_state == "concrete6")
		icon_state = pick("concrete6", "concrete7")
		return
	if (icon_state == "concrete10")
		icon_state = pick("concrete10", "concrete11")
		return

/turf/floor/plating/cobblestone
	name = "road"
	icon = 'icons/turf/floors.dmi'
	icon_state = "cobble_horizontal"
	interior = FALSE

/turf/floor/plating/stone_old
	name = "stone floor"
	icon = 'icons/turf/floors.dmi'
	icon_state = "stone_old"
	interior = FALSE

/turf/floor/plating/cobblestone/dark
	name = "road"
	icon = 'icons/turf/floors.dmi'
	icon_state = "cobble_horizontal_dark"
	interior = FALSE

/turf/floor/plating/cobblestone/vertical
	name = "road"
	icon = 'icons/turf/floors.dmi'
	icon_state = "cobble_vertical"
	interior = FALSE

/turf/floor/plating/cobblestone/vertical/dark
	name = "road"
	icon = 'icons/turf/floors.dmi'
	icon_state = "cobble_vertical_dark"
	interior = FALSE