; swarms in grass

; Dunsparce swarm
	map DARK_CAVE_VIOLET_ENTRANCE
	db $19
	db 25
	db $00
;morning
		db DUNSPARCE ;30	50% Dunsparce L25-29
		db DUNSPARCE ;10	20% Larvitar L25-29
		db DUNSPARCE ;10	15% Shuckle L25-29
		db LARVITAR ;10		6% Wobbuffet L25-29
		db LARVITAR ;5		5% Swinub L25-29
		db LARVITAR ;5		4% Quagsire L25-29
		db SWINUB ;5
		db SHUCKLE ;5
		db QUAGSIRE ;4
		db SHUCKLE ;4
		db SHUCKLE ;3
		db SHUCKLE ;3
		db WOBBUFFET ;2
		db WOBBUFFET ;2
		db WOBBUFFET ;1
		db WOBBUFFET ;1
;day
		db DUNSPARCE ;30	50% Dunsparce L25-29
		db DUNSPARCE ;10	15% Larvitar L25-29
		db DUNSPARCE ;10	15% Swinub L25-29
		db LARVITAR ;10		8% Wobbuffet L25-29
		db LARVITAR ;5		7% Quagsire L25-29
		db SWINUB ;5		5% Shuckle L25-29
		db SWINUB ;5
		db SWINUB ;5
		db SHUCKLE ;4
		db QUAGSIRE ;4
		db QUAGSIRE ;3
		db WOBBUFFET ;3
		db WOBBUFFET  ;2
		db WOBBUFFET  ;2
		db WOBBUFFET  ;1
		db SHUCKLE ;1
;night
		db DUNSPARCE ;30	50% Dunsparce L25-29
		db DUNSPARCE ;10	25% Larvitar L25-29
		db DUNSPARCE ;10	10% Wobbuffet L25-29
		db LARVITAR ;10		5% Quagsire L25-29
		db LARVITAR ;5		5% Swinub L25-29
		db LARVITAR ;5		5% Shuckle L25-29
		db LARVITAR ;5
		db WOBBUFFET ;5
		db WOBBUFFET ;4
		db QUAGSIRE ;4
		db SWINUB ;3
		db SHUCKLE ;3
		db SHUCKLE ;2
		db SWINUB ;2
		db QUAGSIRE ;1
		db WOBBUFFET ;1

; Yanma swarm
	map ROUTE_35
	db $19 ; encounter rates: morn/day/nite
	db 35
	db $00
;morning
		db YANMA ;30		50% Yanma L35-39
		db YANMA ;10		25% Skiploom L35-39
		db SKIPLOOM ;10		10% Jumpluff L35-39
		db SKIPLOOM ;10		10% Sunflora L35-39
		db YANMA ;5		5% Bayleef L35-39
		db JUMPLUFF ;5
		db JUMPLUFF ;5
		db YANMA ;5
		db SKIPLOOM ;4
		db BAYLEEF ;4
		db SUNFLORA ;3
		db SUNFLORA ;3
		db SUNFLORA ;2
		db SUNFLORA ;2
		db BAYLEEF ;1
		db SKIPLOOM ;1
;day
		db YANMA ;30		60% Yanma L35-39
		db YANMA ;10		15% Bayleef L35-39
		db YANMA ;10		15% Sunflora L35-39
		db BAYLEEF ;10		7% Skiploom L35-39
		db YANMA ;5		3% Jumpluff L35-39
		db YANMA ;5
		db BAYLEEF ;5
		db SUNFLORA ;5
		db SUNFLORA ;4
		db SUNFLORA ;4
		db SKIPLOOM ;3
		db JUMPLUFF ;3
		db SKIPLOOM ;2
		db SKIPLOOM ;2
		db SUNFLORA ;1
		db SUNFLORA ;1
;night
		db YANMA ;30		75% Yanma L35-39
		db YANMA ;10		25% Houndoom L35-39
		db HOUNDOOM ;10
		db HOUNDOOM ;10
		db YANMA ;5
		db HOUNDOOM ;5
		db YANMA ;5
		db YANMA ;5
		db YANMA ;4
		db YANMA ;4
		db YANMA ;3
		db YANMA ;3
		db YANMA ;2
		db YANMA ;2
		db YANMA ;1
		db YANMA ;1

	db $ff ; end
