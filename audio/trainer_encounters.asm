; Currently, must be in the same bank as the sound engine.

PlayTrainerEncounterMusic:: ; e900a
; input: e = trainer type
	; turn fade off
	callba SaveMusic
	xor a
	ld [MusicFade], a
	; play nothing for one frame
	push de
	ld de, $0000 ; id: Music_Nothing
	call PlayMusic
	call DelayFrame
	; play new song
	call MaxVolume
	pop de
	ld d, $00
	ld hl, TrainerEncounterMusic
	add hl, de
	ld a, [hl]
	cp MUSIC_ROCKET_ENCOUNTER
	jr nz, .play
	call RocketMusicCheck
	jr c, .play
	ld a, MUSIC_HIKER_ENCOUNTER
.play
	ld e, a
	call PlayMusic
	ret
; e9027

TrainerEncounterMusic: ; e9027
	db MUSIC_HIKER_ENCOUNTER		; rocket (prologue)
	db MUSIC_NONE				; falkner
	db MUSIC_NONE				; whitney
	db MUSIC_NONE				; bugsy
	db MUSIC_NONE				; morty
	db MUSIC_NONE				; pryce
	db MUSIC_NONE				; jasmine
	db MUSIC_NONE				; chuck
	db MUSIC_NONE				; clair
	db MUSIC_RIVAL_ENCOUNTER		; silver1
	db MUSIC_NONE				; oak
	db MUSIC_NONE				; will
	db MUSIC_OFFICER_ENCOUNTER		; gold
	db MUSIC_NONE				; bruno
	db MUSIC_NONE				; karen
	db MUSIC_NONE				; koga
	db MUSIC_NONE				; lance
	db MUSIC_NONE				; brock
	db MUSIC_NONE				; misty
	db MUSIC_NONE				; surge
	db MUSIC_ROCKET_ENCOUNTER		; researcher
	db MUSIC_NONE				; erika
	db MUSIC_YOUNGSTER_ENCOUNTER		; youngster
	db MUSIC_YOUNGSTER_ENCOUNTER		; schoolkid
	db MUSIC_YOUNGSTER_ENCOUNTER		; birdkeeper
	db MUSIC_LASS_ENCOUNTER			; lass
	db MUSIC_NONE				; janine
	db MUSIC_YOUNGSTER_ENCOUNTER		; cooltrainerm
	db MUSIC_LASS_ENCOUNTER			; cooltrainerf
	db MUSIC_BEAUTY_ENCOUNTER		; beauty
	db MUSIC_YOUNGSTER_ENCOUNTER		; pokemaniac
	db MUSIC_ROCKET_ENCOUNTER		; gruntm
	db MUSIC_HIKER_ENCOUNTER		; gentleman
	db MUSIC_BEAUTY_ENCOUNTER		; skier
	db MUSIC_BEAUTY_ENCOUNTER		; teacher
	db MUSIC_NONE				; sabrina
	db MUSIC_YOUNGSTER_ENCOUNTER		; bug_catcher
	db MUSIC_HIKER_ENCOUNTER		; fisher
	db MUSIC_YOUNGSTER_ENCOUNTER		; swimmerm
	db MUSIC_BEAUTY_ENCOUNTER		; swimmerf
	db MUSIC_HIKER_ENCOUNTER		; sailor
	db MUSIC_YOUNGSTER_ENCOUNTER		; super_nerd
	db MUSIC_RIVAL_ENCOUNTER		; silver2
	db MUSIC_HIKER_ENCOUNTER		; guitarist
	db MUSIC_HIKER_ENCOUNTER		; hiker
	db MUSIC_HIKER_ENCOUNTER		; biker
	db MUSIC_NONE				; blaine
	db MUSIC_HIKER_ENCOUNTER		; burglar
	db MUSIC_HIKER_ENCOUNTER		; firebreather
	db MUSIC_HIKER_ENCOUNTER		; juggler
	db MUSIC_HIKER_ENCOUNTER		; blackbelt
	db MUSIC_ROCKET_EXECUTIVE		; executivem
	db MUSIC_YOUNGSTER_ENCOUNTER		; esper
	db MUSIC_LASS_ENCOUNTER			; picnicker
	db MUSIC_YOUNGSTER_ENCOUNTER		; camper
	db MUSIC_ROCKET_EXECUTIVE		; executivef
	db MUSIC_SAGE_ENCOUNTER			; sage
	db MUSIC_SAGE_ENCOUNTER			; medium
	db MUSIC_YOUNGSTER_ENCOUNTER		; boarder
	db MUSIC_HIKER_ENCOUNTER		; pokefanm
	db MUSIC_KIMONO_ENCOUNTER		; kimono_girl
	db MUSIC_LASS_ENCOUNTER			; twins
	db MUSIC_BEAUTY_ENCOUNTER		; pokefanf
	db MUSIC_NONE				; red
	db MUSIC_NONE				; blue
	db MUSIC_HIKER_ENCOUNTER		; officer
	db MUSIC_ROCKET_ENCOUNTER		; gruntf
	db MUSIC_MYSTICALMAN_ENCOUNTER		; eusine
	db MUSIC_NONE				; bill
	db MUSIC_NONE				; tppPc
	db MUSIC_NONE				; elm
	db MUSIC_POWER_PLANT			; giovanni
	db MUSIC_YOUNGSTER_ENCOUNTER		; coolsiblings
	db MUSIC_OFFICER_ENCOUNTER		; rusty
	db MUSIC_OFFICER_ENCOUNTER		; azure
	db MUSIC_NONE				; brock_rb
	db MUSIC_NONE				; misty_rb
	db MUSIC_NONE				; kris
	db MUSIC_HIKER_ENCOUNTER		; executive_egk
; e906e
