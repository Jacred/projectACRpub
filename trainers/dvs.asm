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
	db $DC, $DD ; MEGANIUM
	db $DC, $DD ; TYPHLOSION
	db $DC, $DD ; FERALIGATR
	db $DC, $DD ; UMBREON
	db $DC, $DD ; SKARMORY
	db $DC, $DD ; DONPHAN

.AbeDVs
	db $FD, $DE ; ZAPDOS
	db $FD, $DE ; NIDOKING
	db $FD, $DE ; OMASTAR
	db $FD, $DE ; VENOMOTH
	db $FD, $DE ; LAPRAS
	db $FD, $DE ; PIDGEOT

.BabaDVs 
	db $FD, $FF ; RAIKOU
	db $CF, $FF ; ENTEI
	db $AF, $FF ; SUICUNE
	db $FF, $FF ; CELEBI
	db $FF, $FF ; LUGIA
	db $FF, $FF ; HO-OH

TrainerClassDVs: ; 270d6
;	ATK DEF SPD SPC
	db $9A, $77 ; falkner
	db $88, $88 ; whitney
	db $98, $88 ; bugsy
	db $98, $88 ; morty
	db $98, $88 ; pryce
	db $98, $88 ; jasmine
	db $98, $88 ; chuck
	db $7C, $DD ; clair
	db $DD, $DD ; silver1
	db $98, $88 ; oak
	db $DC, $DD ; will
	db $DC, $DD ; gold
	db $DC, $DD ; bruno
	db $7F, $DF ; karen
	db $DC, $DD ; koga
	db $DC, $DD ; lance
	db $98, $88 ; brock
	db $78, $88 ; misty
	db $98, $88 ; surge
	db $98, $88 ; researcher
	db $78, $88 ; erika
	db $98, $88 ; youngster
	db $98, $88 ; schoolkid
	db $98, $88 ; birdkeeper
	db $58, $88 ; lass
	db $98, $88 ; janine
	db $D8, $C8 ; elite♂
	db $7C, $C8 ; elite♀
	db $69, $C8 ; beauty
	db $98, $88 ; pokemaniac
	db $D8, $A8 ; grunt♂
	db $98, $88 ; gentleman
	db $98, $88 ; skier
	db $68, $88 ; teacher
	db $7D, $87 ; sabrina
	db $98, $88 ; bug catcher
	db $98, $88 ; fisher
	db $98, $88 ; swimmer♂
	db $78, $88 ; swimmer♀
	db $98, $88 ; sailor
	db $98, $88 ; super nerd
	db $DD, $DD ; silver2
	db $98, $88 ; guitarist
	db $A8, $88 ; hiker
	db $98, $88 ; biker
	db $98, $88 ; blaine
	db $98, $88 ; burglar
	db $98, $88 ; firebreather
	db $98, $88 ; juggler
	db $98, $88 ; blackbelt
	db $D8, $A8 ; executive♂
	db $98, $88 ; esper
	db $6A, $A8 ; scout♀
	db $98, $88 ; scout♂
	db $7E, $A8 ; executive♀
	db $98, $88 ; sage
	db $78, $88 ; channeler
	db $98, $88 ; boarder
	db $98, $88 ; pokefan♂
	db $68, $8A ; kimono girl
	db $68, $A8 ; twins
	db $6D, $88 ; pokefan♀
	db $FD, $DE ; red
	db $9D, $DD ; blue
	db $98, $88 ; officer
	db $7E, $A8 ; grunt♀
	db $98, $88 ; eusine
	db $98, $88 ; bill
	db $FF, $FF ; elm
	db $FF, $FF ; league's pc
	db $D8, $A8 ; giovanni
	db $DC, $C8 ; elites
	db $EE, $FF ; rusty
	db $EE, $FF ; azure
	db $98, $88 ; brock
	db $78, $88 ; misty
	db $FF, $FF ; kris
	db $D8, $A8 ; executive	
; 2715c

