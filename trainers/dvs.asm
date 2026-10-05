GetTrainerDVs: ; 270c4
; Return the DVs of OtherTrainerClass in bc

	push hl
	ld a, [OtherTrainerClass]
	cp RED
	jr nz, .okay
	ld a, [OtherTrainerID]
	dec a
	ld hl, .RedDVs
	jr z, .LoadHostDVs
	dec a
	ld hl, .AbeDVs
	jr z, .LoadHostDVs
	ld a, [OtherTrainerClass]
.okay
	cp CAL
	jr nz, .okay2
	ld a, [OtherTrainerID]
	cp 4
	ld hl, .AJDVs
	jr z, .LoadHostDVs
	ld a, [OtherTrainerClass]
.okay2
	cp BABA
	ld hl, .BabaDVs
	jr z, .LoadHostDVs
	cp PSYCHIC_T
	jr nz, .okay3
	ld a, [OtherTrainerID]
	cp 1
	jr z, .PsychicNathan
	cp 11
	jr z, .PsychicJared
	ld a, [OtherTrainerClass]
.okay3
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassDVs
	add hl, bc
	add hl, bc

	ld a, [hli]
	ld b, a
	ld c, [hl]

	pop hl
	ret
; 270d6

.LoadHostDVs
	ld a, [CurPartyMon]
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	pop hl
	ret

.PsychicNathan
	ld a, [hRandomAdd]
	ld b, a
	ld a, [hRandomSub]
	ld c, a
	pop hl
	ret

.PsychicJared
	ld a, [CurPartyMon]
	add a
	ld c, a
	ld b, 0
	ld hl, .JaredDVs
	add hl, bc
	ld b, [hl]
	inc hl
	ld c, [hl]
	pop hl
	ret

.JaredDVs
	db $78, $9f ; T
	db $f2, $6e ; W
	db $ab, $23 ; I
	db $f9, $b2 ; T
	db $1a, $38 ; C
	db $21, $d2 ; H

.RedDVs
	db $FD, $DE ; PIKACHU
	db $FD, $DE ; ESPEON
	db $FD, $DE ; SNORLAX
	db $FD, $DE ; VENUSAUR
	db $FD, $DE ; CHARIZARD
	db $FD, $DE ; BLASTOISE

.AJDVs
	db $FF, $FF ; PICHU
	db $DC, $DD ; SUDOWOODO
	db $DC, $DD ; TOGETIC
	db $DC, $DD ; FERALIGATR
	db $DC, $DD ; MEGANIUM
	db $DC, $DD ; TYPHLOSION

.AbeDVs
	db $FD, $DE ; ZAPDOS
	db $FD, $DE ; NIDOKING
	db $FD, $DE ; OMASTAR
	db $FD, $DE ; VENOMOTH
	db $FD, $DE ; LAPRAS
	db $FD, $DE ; PIDGEOT

.BabaDVs 
	db $FD, $FF ; RAIKOU	hp ice
	db $CF, $FF ; ENTEI		hp ground
	db $AF, $FF ; SUICUNE	hp grass
	db $FF, $FF ; CELEBI
	db $FF, $FF ; LUGIA
	db $FF, $FF ; HO-OH

TrainerClassDVs: ; 270d6
;	ATK DEF SPD SPC	class		hidden power
	db $FA, $F7 ; falkner		dragon
	db $7F, $DA ; whitney		dark
	db $CC, $BA ; bugsy			fighting
	db $CA, $FF ; morty			poison
	db $9E, $8F ; pryce			ghost
	db $BF, $7A ; jasmine		dark
	db $FF, $97 ; chuck			dark
	db $D5, $CD ; clair			bug
	db $DD, $DD ; silver1		bug
	db $DD, $DD ; oak			bug
	db $DC, $DD ; will			rock
	db $DC, $DD ; gold			rock
	db $DD, $DC ; bruno			bug
	db $7F, $DF ; karen			dark
	db $BD, $DD ; koga			ice
	db $DD, $DD ; lance			bug
	db $AF, $8F ; brock			electric
	db $F8, $C8 ; misty			psychic
	db $AC, $FF ; surge			fire
	db $98, $88 ; researcher	rock
	db $7D, $9F ; erika			ice
	db $98, $88 ; youngster		rock
	db $98, $88 ; schoolkid		rock
	db $98, $88 ; birdkeeper	rock
	db $58, $88 ; lass			rock
	db $CA, $FF ; janine		poison
	db $D8, $C8 ; elite♂		rock
	db $7C, $C8 ; elite♀		psychic
	db $69, $C8 ; beauty		water
	db $98, $88 ; pokemaniac	rock
	db $D8, $A8 ; grunt♂		rock
	db $98, $88 ; gentleman		rock
	db $98, $88 ; skier			rock
	db $68, $88 ; teacher		fire
	db $78, $FF ; sabrina		psychic
	db $98, $88 ; bug catcher	rock
	db $98, $88 ; fisher		rock
	db $98, $88 ; swimmer♂		rock
	db $78, $88 ; swimmer♀		psychic
	db $98, $88 ; sailor		rock
	db $98, $88 ; super nerd	rock
	db $DD, $DD ; silver2		bug
	db $98, $88 ; guitarist		rock
	db $A8, $88 ; hiker			fire
	db $98, $88 ; biker			rock
	db $F8, $8F ; blaine		rock
	db $98, $88 ; burglar		rock
	db $98, $88 ; firebreather	rock
	db $98, $88 ; juggler		rock
	db $98, $88 ; blackbelt		rock
	db $D8, $A8 ; executive♂	rock
	db $98, $88 ; esper			rock
	db $6A, $A8 ; scout♀		grass
	db $98, $88 ; scout♂		rock
	db $7E, $A8 ; executive♀	dragon
	db $98, $88 ; sage			rock
	db $78, $88 ; channeler		psychic
	db $98, $88 ; boarder		rock
	db $98, $88 ; pokefan♂		rock
	db $68, $8A ; kimono girl	fire
	db $68, $A8 ; twins			fire
	db $6D, $88 ; pokefan♀		water
	db $FD, $DE ; red			ice
	db $DD, $DD ; blue			bug
	db $98, $88 ; officer		rock
	db $7E, $A8 ; grunt♀		dragon
	db $AA, $AA ; eusine		grass
	db $98, $88 ; bill			rock
	db $FF, $FF ; elm			dark
	db $FF, $FF ; league's pc	dark
	db $D8, $C8 ; giovanni		rock
	db $DC, $C8 ; elites		rock
	db $EE, $FF ; rusty			grass
	db $EE, $FF ; azure			grass
	db $98, $88 ; brock			rock
	db $78, $88 ; misty			psychic
	db $FF, $FF ; kris			varies
	db $D8, $A8 ; executive		rock
; 2715c

